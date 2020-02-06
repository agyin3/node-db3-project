const db = require('../data/dbConfig.js')

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update
}

function find(){
    return db('schemes')
}

function findById(id) {
    return db('schemes')
        .where({id})
        .first()
}

function findSteps(id) {
    return db('schemes')
        .where({scheme_id: id})
        .join('steps', 'schemes.id', 'steps.scheme_id')
        .select('scheme_id', 'schemes.scheme_name', 'step_number', 'instructions')
        .orderBy('steps.step_number')
}

function add(body) {
    return db('schemes')
        .insert(body)
        .then(id => findById(id[0]))
}

async function update(changes, id) {
    try {
        const scheme = await db('schemes').where({id}).update(changes)
        return findById(id)
    }catch(err){
        console.log(err)
    }

}

async function remove(id){
    return db('schemes').where({id}).del()

}

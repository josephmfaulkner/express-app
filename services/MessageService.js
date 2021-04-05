const { Message } = require('../sequelize-db/models');

const getAllMessages = async function(){
    try{
        return await Message.findAll({});
      }
      catch (e) {
        console.error(e);
      } 
      return null; 
}

const getMessage = function(){

}

const addMessage = function(){

}

const deleteMessage = function(){

}

module.exports = {
    getAllMessages,
    getMessage,
    addMessage,
    deleteMessage
}

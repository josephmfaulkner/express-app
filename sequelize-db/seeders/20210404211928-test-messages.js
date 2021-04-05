'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {

    await queryInterface.bulkInsert(
      'Messages',
      [
        { content: 'First Test Message',  createdAt : new Date(), updatedAt : new Date()  },
        { content: 'Second Test Message', createdAt : new Date(), updatedAt : new Date()  },
        { content: 'Third Test Message',  createdAt : new Date(), updatedAt : new Date()  },
        { content: 'Forth Test Message',  createdAt : new Date(), updatedAt : new Date()  },
        { content: 'Fifth Test Message',  createdAt : new Date(), updatedAt : new Date()  }
      ],
      {}
      )
  },

  down: async (queryInterface, Sequelize) => {

    await queryInterface.bulkDelete(
      'Messages',
      null, 
      {}
    );

  }
};

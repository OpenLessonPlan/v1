class CreateModel < ActiveRecord::Migration
  def up
  	create_table :models do |t|
  		t.string :xml_content
  		t.string :standard
  		t.string :grade
  		t.string :subject
      t.string :source
      
      t.float :rating
      t.int :num_reviews
      
  		t.string :question_type
  		t.int :blooms_taxonomy_level
  		t.int :difficulty
      
  		t.boolean :is_parent
  		t.boolean :is_child
      t.Model :parent_question
            
  		t.boolean :is_original
  		t.boolean :is_differentiated
      t.Model :original_question
  		t.boolean :has_differentiation

  		t.boolean :is_derived
      t.Model :derived_from_question
      
  	end
  end

  def down
  	drop_table :models
  end
end

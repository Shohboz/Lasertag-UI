namespace :visualize do
  desc "Controllers diagram."
  task C: :environment do
  	sh 'railroady -C | neato -Tpng > doc/controllers.png"'
  end

  desc "Full models diagram."
  task M: :environment do
  	sh 'railroady -a -o doc/models.dot -M'
  	sh 'dot -Tpng doc/models.dot > doc/models.png'
  end

end

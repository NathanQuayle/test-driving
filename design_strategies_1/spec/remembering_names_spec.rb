require 'remembering_names'

describe 'the save_name method' do
    it 'confirms that we saved a name' do
        expect(save_name("Nathan")).to eq "'Nathan' saved!"
    end
end
for ((i=0;i<5;i=i+1))
do
	save_path="./movie/dqn/$i"
	mkdir -p $save_path

	python run.py \
	--agt 9 \
	--usr 1 \
	--max_turn 40 \
	--kb_path ./deep_dialog/data_movie/movie.kb.1k.v1.p \
	--goal_file_path ./deep_dialog/data_movie/user_goals_first_turn_template.part.movie.v1.p \
	--slot_set ./deep_dialog/data_movie/slot_set.txt \
	--act_set ./deep_dialog/data_movie/dia_acts.txt \
	--dict_path ./deep_dialog/data_movie/slot_dict.v1.p \
	--nlg_model_path ./deep_dialog/models/nlg/movie/lstm_tanh_[1533529279.91]_87_99_199_0.988.p \
	--nlu_model_path ./deep_dialog/models/nlu/movie/lstm_[1533588045.3]_38_38_240_0.998.p \
	--diaact_nl_pairs ./deep_dialog/data_movie/dia_act_nl_pairs.v7.json \
	--dqn_hidden_size 80 \
	--experience_replay_pool_size 10000 \
	--episodes 200 \
	--simulation_epoch_size 100 \
	--write_model_dir $save_path \
	--run_mode 3 \
	--act_level 0 \
	--slot_err_prob 0.00 \
	--intent_err_prob 0.00 \
	--batch_size 16 \
	--warm_start 1 \
	--warm_start_epochs 120 \
	--epsilon 0.00 \
	--gamma 0.95 \
	--dueling_dqn 0 \
	--double_dqn 0 \
	--distributional 0 \
	--icm 0 \
	--per 0 \
	--noisy 0
done

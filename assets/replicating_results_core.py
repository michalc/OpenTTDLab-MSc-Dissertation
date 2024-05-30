from openttdlab import run_experiments, bananas_ai

results = run_experiments(
    openttd_version='13.4',
    opengfx_version='7.1',
    experiments=(
        {
            'seed': seed,
            'ais': (
                bananas_ai('54524149', 'trAIns'),
                bananas_ai('41444d4c', 'AdmiralAI', ai_params=(
                    ('use_trains', '1'),
                    ('use_busses', '0'),
                    ('use_trucks', '0'),
                    ('use_planes', '0'),
                )),
            ),
            'days': 365 * 15 + 1,
            'openttd_config': f'''
                [difficulty]
                terrain_type={terrain_type}
                [game_creation]
                starting_year=1960
            ''',
        }
        for seed in range(0, 50)
        for terrain_type in [1, 3]
    ),
    max_workers=4,
)
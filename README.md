## Pre-selected variables

**GPS-related**, **anthropometric** and **"player specificities"** variables: 

<br/>

|Variables                    |  Definition                             |
|:----------------------------|:----------------------------------------|
|`player`                       | Player identification name (pseudo-anonymized) |
|`date`                         | Date observation was collected  |
|`season`                       | Season (spanish football league) to which the observation corresponds |
|`player_position`              | Player's position on the field of play, classified into four general positions |
|`week`                         | Week to which the observation corresponds, being the starting week the first week of July (pre-season) |
|`total_time_min`               | Total time of exposure in minutes corresponding to the observation, i.e. total time the player has been at risk that date |
|`session_type`                 | Type of session whether training or match session |
|`accelerations`                | Number of accelerations the player did on that session, i.e. number of positive changes in velocity (≥ 3 m/s2) | 
|`avg_heart_rate`               | Average heart rate of the player on that session, an indicator of "readiness" |
|`avg_metabolic_power`          | Average metabolic power (W/Kg), average internal energy expenditure of the player on that session. Also defined as the amount of energy required, per unit of time, to perform the desired activity, a measure of the amount of ATP, per unit of time, necessary to perform the specific task|
|`avg_speed`                    | Average speed (m/s) of the player during the session |
|`decelerations`                | Number of decelerations the player did on that session, i.e. number of negative changes in velocity (≤ −3 m/s)|
|`distance_total`               | Total distance (m) covered on that session |
|`high_speed_running_abs`       | "HSR (absolute)" distance (m) covered by a player on that session when his speed was in Zone 5 or 6  (i.e. highest speed zones)|
|`high_metabolic_load_distance` | "HML (distance)"  distance (m) covered by a player on that session at a metabolic power greater than 25.5W/Kg|
|`speed_intensity`              | A measure of total exertion calculated as the sum of a convexly weighted measure of instantaneous speed, measured in arbitrary units (AU)|
|`sprints`                      | Number of sprints the player did on that session, i.e. count of high-speed efforts above certain thresholds (25.2 km/h)| 
|`sprints_distance`             | Distance covered on that session while sprinting |
|                               |       |
| `Borg`                        | Individual's rating of exercise intensity, 0-10 scale of rating perceived exertion (RPE). It is a measure of internal load |
| `load`                        | The result of: "time of exposure" times "Borg" | 
| `P1`                          | Fatigue (wellness questionnaire). Responses range from 1-5, where 5 expresses the highest degree of satisfaction (1: very tired, ..., 5: fresh) |
| `P2`                          | Sleep (wellness questionnaire) ...  (1: insomnia, ..., 5: rest) |
| `P3`                          | General complaints (wellness questionnaire) ...  (1: pain, ...., 5: no pain) |
| `P4`                          | Stress (wellness questionnaire) ... (1: stressed, ..., 5: relaxed)|
| `P5`                          | Mood (wellness questionnaire) ... (1: irritable, ..., 5: positive) |
| `sum_skinfolds`               | Sum of the six skinfolds (mm) (triceps (T), subscapular (Sb), suprailiac (Sp), abdominal (A), thigh calf (TC) and medial calf (MC)) |
| `weight`                      | Weight of the player |

<br/>
<br/>

More about speed intensity zones:


<div align="center">
  <img width="480" 
       src="../../../figures/others/table_speedIntensityZones.png" />
</div>


[https://www.scienceforsport.com/gps-wearables-metrics-and-application/](https://www.scienceforsport.com/gps-wearables-metrics-and-application/)

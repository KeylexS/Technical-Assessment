# Technical-Assessment

A comprehensive data pipeline to transform raw data into actionable insights. The exercise involves cleaning data, constructing a star schema model . Additionally, design key metrics to enable clients to assess and comprehend their sales performance.

## Applicant

- Keylor O. Soto Delgado

### Data Pipeline and Sales Analytics (Assoc)

This document aims to show the steps I followed to complete the technical assessment for the Data Engineer Application role at Hakkoda.

** Preprocess: **

Connect Snowflake with Power BI

![](https://lh7-us.googleusercontent.com/QVMABW1anCuCQ8ocF5HJLx6Z7r7qONgudvqEzCumYipej19SatG-54kfbfVubnkL0SMvs3-JZVaVKRVNBU_PWRBSj4sFZRfccBxjXOO6Qa-jEsHEChQS_t72pWEDt9Is-HHf2rRe8K9UOZYQVRJRQ8U)

** Workshop: **

![](https://lh7-us.googleusercontent.com/BQA0uNkbbhGOhw0WALNowTnulCQDovON3v-d5eh0L_LeKK6reRdWbmM96ycFAoegWQJBbCk4jfiuSLhoIII7_cNbwi2WfvG437-sLKDQB_u0fGVHl323b-FUkrv4u6PXgatlPgkvaYALQjCHhDi97GE)

1. Load data in Snowflake

![](https://lh7-us.googleusercontent.com/RU4L-UmLN3-N3OCzFgCJ8a_TqBtgYp5T4bXMQoemg7uob4dGxwLgcRWQvNkbR6bqEW1Q-BjYH7ZHNx80H47mVAuslrVbtcAyPApnVitSsL5dC5H8fIUfjyZGDG8unkZEGObmMA4GLpC2woGxfjwMIxU)

![](https://lh7-us.googleusercontent.com/ibdnWla1urytA068r9wLtUqx_Fn8sAePSmP92gImFVG3q-I6ZCqXVQW8TQjwa3fxrTDo-EvmqngroH7vmRwFodYt0HlkII4_R9MDRFV_v77-Wy0FXtog8Mcjf_8yhdgPs2qjg0rx4J1vMBdH7umvnns)

Then I linked Snowflake with PowerBI (due to I had problems with connecting the server)

![](https://lh7-us.googleusercontent.com/2TZwyBhUIVZ-CXnWyh3B5_8txutwOaeBrNJgHr66Q511fopHZ0VnXTP4Df_lvJJQZX6npDetZkwyrj9Jvgl0kckN1lQIukWDNARIX3XtzPQ368LmJKxYzlqet7D-N31CSOpZw6mlRd5GP4nsFMvpIio)

2\. Perform data cleaning Using your favorite language, get your data from the snowflake tables and perform data cleaning over your source tables, you are required to:

- Remove duplicates

- Fill null values found on the columns

- Remove invalid characters.

Removing Duplicates:

Removing duplicate rows:

![](https://lh7-us.googleusercontent.com/6VMQFj8CwRZ7_tcXZkAFQC07ASRVBmngVl7iYAHjcXC3l95kHIe612xPGKftPaMiVoCbB83RNdtZQ5KUs4uLt4topMm_Sz1s4KCQwQHAEpKEHYbU2ML0U75GraLYGqROuoDNGo2wLMz33gL3_clGhww)

Null Values:

Using concatenations to fill the space in CLIENT_NAME.

![](https://lh7-us.googleusercontent.com/_9IZc_1wcDRaC1OOG0GB_2n9QzrnzBINUhV1y-6_6ikpg9yqKImOhdLL6i5Q0csh-TZujK6--95KDeQiC5kRLEhDY3bmhdnX-Drh6aggaxaaFfM4lYvFR8bzFIJxGE-WUcCC0SSFhAcFLxQ9sSgP0bI)

![](https://lh7-us.googleusercontent.com/fTQa2OI421pND-cgbObnD2j-I46yHkxy2WGMRba5HtylvWywxiJzvHtUdQUWIMEqZEAlu7XkerJ2hxXRz6jWFrgWDSuSlQX8ZhzXYnyehJeflK8MddgPVW495oqS5qFRhcVcBlGNryc2Ocan1K4jtJs)

Also Store_Name

![](https://lh7-us.googleusercontent.com/rD785els9de3IsFNvEv3e2eg1w_ae0MNEUeUfUiBistXWUdzwRuP49DA0jOb9YNe35SjdX7GKlc6tXkHDlzhBls1Ydzd7PEqsbcOKnrx45_MzuTWhmPnt-ihgP-S4PBuPnmuTATUJegtBIJJ1f9Fccw)

And finally Product_Name

![](https://lh7-us.googleusercontent.com/lgwPqKngSMFmVBv3K55KDLm_vd3eJHd5HIB-ofwj-soAlDV8gIszFF8NDD7F6UjfZqTUWPhSSKrEafkeLFvgId4bOqQxsEJcCkG58Hy-xwifvY1J8aINAGMxVOfi4UR1dG4Djzhvg_qk3TGadtqiPvU)

The I verify the data:

![](https://lh7-us.googleusercontent.com/DPeG9TIKz6El-I5VTUQYGRjry9-sMc_916a4khoDOG5h1Lc7RElJu8Hj3GPb3KeJTL-3npMhvcuoVQv7nYIq75UoS-GXvj5VVmCWoQH3JuPVHcB-2ng_ztggNTzaEAxs5c-Qcn7CPGtFvjYCh4fbxeI)

![](https://lh7-us.googleusercontent.com/57kNL2naE8P9D-C9wYxYENRCSiJ7D6LJdoEZoJ4ruhL0WAW6yLr8EnS6MLUPsOudub251y9QoT1zXkksElCajp8zQrPgYVuhexac9j4cXlYFXQpB_aMoCbX3oj-Im5bBx_mqs8ezX8agNvn_9FhWiRU)

Creation of Dimensions and Fact Tables:

![](https://lh7-us.googleusercontent.com/Vm3EdsNpdTrKPakAJJx1phHhve7I0bao-WEAcgQXASQCLKn_GpuVmVorBrLarLYjGp8v2WuOtLtudj57EkezzuACKbpxmM4riW74ga6mvjU6xa4G8YAbAMsARDqGnC5S77S5bAfbzquPfIKlLLYMmSs)

I assumed that I should leave the transaction table as a backup.

5\. Create metrics

- Develop key metrics and insights from the integrated data to uncover valuable
  patterns and trends

![](https://lh7-us.googleusercontent.com/BLx8mFRB6NVEUfuqiwp4zAePAF7nQU6T__GFygbt6X49hMHHAt2MxqyIBRw0I9IPC38Uy02ZOIFQ4fM9U61Df700r2k2oMvZuICvc0TEHRI8fMo9Jrpd-iR9C_GGQZwM2NTyil9Ahio_RMFsbLkiEfE)

![](https://lh7-us.googleusercontent.com/k1M4YOmojOJulZqvhBSCrABlZ2gZRtjdB7S8-JA1CSnlkz2tYK0KwzL3WxKS19WUXLOCE5RUPGvR5wBLD9URUtm1Pm54DHNci9q0KLaB6139hzBxcQaBFUOTVmwOcgXeaBfCfqptV6XVXBL6j2b8avs)

![](https://lh7-us.googleusercontent.com/C2NHvpQKYG2O5PM6Xnthbfrtq6hJout8uBmCt2pc0-2w2kAecNPt6VOB1urXrXbhfLEPJRGx1D1Q-MjV7fzbihfWQfiw4-WDa6X72rClZTU2Au-1f7DyMAbcme3IV5YqhRckVCpT2g06uxaV3lqbODA)

![](https://lh7-us.googleusercontent.com/HwL9h4zorR3cyS17Osb5DhWY5RROOFxZO9EDKef4drOQQd4H2isM6wD7eZ2Nl-BSK1HXpJnRs1J94sxXjVrXGVEim3T93bXnaVRjeuZI5U_60nFlGMhOnorogJE4ufKkHGM5n1J2vAps86bhaT_pohc)

![](https://lh7-us.googleusercontent.com/l1n_Q2WL0o8CjHBSe6FlJVdDO6-1V9cpIHD8Xzslb2wOx3wPLLm4Ra_CWho2o_qtIs0J5Se-TgEv1s_rx9nRBlkPi-jOk-vYf6q9leMza0sPugUGvLd-ouQRaJ4SNOmhePstq1EKtfuUYGMeYeuM8A4)

![](https://lh7-us.googleusercontent.com/Qifmw9xLsl9J7JMQJ1JigvihOiWeGtapHh7ua87AXCP6bkq8aXmB92K5C3dSNLH4f6se3CFUjJPlSbrt7XQNZNn87fJZJorUPKM_gmQZ5kpL4u92PFOO-htOvQ9qxmpheJtRgAT0typHpLc5BaiSZaQ)

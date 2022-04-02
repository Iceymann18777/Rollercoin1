.class Lcom/onesignal/NotificationChannelManager;
.super Ljava/lang/Object;
.source "NotificationChannelManager.java"


# static fields
.field private static final hexPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^([A-Fa-f0-9]{8})$"

    .line 61
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/onesignal/NotificationChannelManager;->hexPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private static createChannel(Landroid/content/Context;Landroid/app/NotificationManager;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "chnl"

    .line 101
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 104
    new-instance v1, Lorg/json/JSONObject;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_15

    .line 106
    :cond_12
    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    :goto_15
    const-string v0, "id"

    const-string v2, "fcm_fallback_notification_channel"

    .line 108
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "miscellaneous"

    .line 110
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move-object v2, v0

    :goto_27
    const-string v0, "langs"

    .line 114
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 115
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 116
    invoke-static {}, Lcom/onesignal/OSUtils;->getCorrectedLanguage()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 118
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_43

    :cond_42
    move-object v0, v1

    :goto_43
    const-string v3, "nm"

    const-string v4, "Miscellaneous"

    .line 121
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    const-string v5, "pri"

    .line 123
    invoke-virtual {p2, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/onesignal/NotificationChannelManager;->priorityToImportance(I)I

    move-result v4

    .line 124
    new-instance v5, Landroid/app/NotificationChannel;

    invoke-direct {v5, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v3, "dscr"

    const/4 v4, 0x0

    .line 125
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const-string v3, "grp_id"

    .line 127
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 128
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "grp_nm"

    .line 129
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v3, Landroid/app/NotificationChannelGroup;

    invoke-direct {v3, v1, v0}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v3}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    .line 131
    invoke-virtual {v5, v1}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    :cond_82
    const-string v0, "ledc"

    .line 134
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 135
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/onesignal/NotificationChannelManager;->hexPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_a3

    .line 140
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal LED Color Settings: ARGB Hex value incorrect format (E.g: FF9900FF)"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const-string v0, "FFFFFFFF"

    .line 145
    :cond_a3
    :try_start_a3
    new-instance v1, Ljava/math/BigInteger;

    const/16 v3, 0x10

    invoke-direct {v1, v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 146
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/app/NotificationChannel;->setLightColor(I)V
    :try_end_b1
    .catchall {:try_start_a3 .. :try_end_b1} :catchall_b2

    goto :goto_ba

    :catchall_b2
    move-exception v0

    .line 148
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Couldn\'t convert ARGB Hex value to BigInteger:"

    invoke-static {v1, v3, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_ba
    :goto_ba
    const-string v0, "led"

    const/4 v1, 0x1

    .line 151
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_c6

    const/4 v0, 0x1

    goto :goto_c7

    :cond_c6
    const/4 v0, 0x0

    :goto_c7
    invoke-virtual {v5, v0}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const-string v0, "vib_pt"

    .line 153
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 154
    invoke-static {p2}, Lcom/onesignal/OSUtils;->parseVibrationPattern(Lorg/json/JSONObject;)[J

    move-result-object v0

    if-eqz v0, :cond_db

    .line 156
    invoke-virtual {v5, v0}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    :cond_db
    const-string v0, "vib"

    .line 158
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_e5

    const/4 v0, 0x1

    goto :goto_e6

    :cond_e5
    const/4 v0, 0x0

    :goto_e6
    invoke-virtual {v5, v0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const-string v0, "sound"

    .line 160
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_112

    .line 162
    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {p0, v0}, Lcom/onesignal/OSUtils;->getSoundUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_ff

    .line 165
    invoke-virtual {v5, p0, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    goto :goto_112

    :cond_ff
    const-string p0, "null"

    .line 166
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10f

    const-string p0, "nil"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_112

    .line 167
    :cond_10f
    invoke-virtual {v5, v4, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    :cond_112
    :goto_112
    const-string p0, "vis"

    .line 173
    invoke-virtual {p2, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v5, p0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string p0, "bdg"

    .line 174
    invoke-virtual {p2, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_125

    const/4 p0, 0x1

    goto :goto_126

    :cond_125
    const/4 p0, 0x0

    :goto_126
    invoke-virtual {v5, p0}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const-string p0, "bdnd"

    .line 175
    invoke-virtual {p2, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_132

    goto :goto_133

    :cond_132
    const/4 v1, 0x0

    :goto_133
    invoke-virtual {v5, v1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 177
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Creating notification channel with channel:\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 179
    :try_start_150
    invoke-virtual {p1, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_153
    .catch Ljava/lang/IllegalArgumentException; {:try_start_150 .. :try_end_153} :catch_154

    goto :goto_158

    :catch_154
    move-exception p0

    .line 186
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_158
    return-object v2
.end method

.method private static createDefaultChannel(Landroid/app/NotificationManager;)Ljava/lang/String;
    .registers 5

    .line 193
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "fcm_fallback_notification_channel"

    const-string v2, "Miscellaneous"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x1

    .line 197
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 198
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 199
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-object v1
.end method

.method static createNotificationChannel(Lcom/onesignal/NotificationGenerationJob;)Ljava/lang/String;
    .registers 6

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "fcm_fallback_notification_channel"

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_9

    return-object v1

    .line 67
    :cond_9
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    .line 68
    iget-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 70
    invoke-static {v0}, Lcom/onesignal/OneSignalNotificationManager;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    .line 72
    iget-boolean p0, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-eqz p0, :cond_1a

    .line 73
    invoke-static {v3}, Lcom/onesignal/NotificationChannelManager;->createRestoreChannel(Landroid/app/NotificationManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    const-string p0, "oth_chnl"

    .line 76
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 77
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-virtual {v3, p0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v4

    if-eqz v4, :cond_2d

    return-object p0

    :cond_2d
    const-string p0, "chnl"

    .line 82
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3a

    .line 83
    invoke-static {v3}, Lcom/onesignal/NotificationChannelManager;->createDefaultChannel(Landroid/app/NotificationManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 86
    :cond_3a
    :try_start_3a
    invoke-static {v0, v3, v2}, Lcom/onesignal/NotificationChannelManager;->createChannel(Landroid/content/Context;Landroid/app/NotificationManager;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_3e} :catch_3f

    return-object p0

    :catch_3f
    move-exception p0

    .line 88
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Could not create notification channel due to JSON payload error!"

    invoke-static {v0, v2, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static createRestoreChannel(Landroid/app/NotificationManager;)Ljava/lang/String;
    .registers 5

    .line 206
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "restored_OS_notifications"

    const-string v2, "Restored"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 210
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-object v1
.end method

.method private static priorityToImportance(I)I
    .registers 3

    const/4 v0, 0x5

    const/16 v1, 0x9

    if-le p0, v1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x7

    if-le p0, v1, :cond_b

    const/4 p0, 0x4

    return p0

    :cond_b
    const/4 v1, 0x3

    if-le p0, v0, :cond_f

    return v1

    :cond_f
    if-le p0, v1, :cond_13

    const/4 p0, 0x2

    return p0

    :cond_13
    const/4 v0, 0x1

    if-le p0, v0, :cond_17

    return v0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method static processChannelList(Landroid/content/Context;Lorg/json/JSONArray;)V
    .registers 9

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_a

    return-void

    .line 222
    :cond_a
    invoke-static {p0}, Lcom/onesignal/OneSignalNotificationManager;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 224
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 225
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_31

    .line 228
    :try_start_1a
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {p0, v0, v4}, Lcom/onesignal/NotificationChannelManager;->createChannel(Landroid/content/Context;Landroid/app/NotificationManager;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_25} :catch_26

    goto :goto_2e

    :catch_26
    move-exception v4

    .line 230
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v6, "Could not create notification channel due to JSON payload error!"

    invoke-static {v5, v6, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 236
    :cond_31
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object p0

    .line 237
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_39
    :goto_39
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    .line 238
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OS_"

    .line 239
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 240
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    goto :goto_39

    :cond_5b
    return-void
.end method

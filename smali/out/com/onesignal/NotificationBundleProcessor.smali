.class Lcom/onesignal/NotificationBundleProcessor;
.super Ljava/lang/Object;
.source "NotificationBundleProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;
    }
.end annotation


# direct methods
.method static OSNotificationPayloadFrom(Lorg/json/JSONObject;)Lcom/onesignal/OSNotificationPayload;
    .registers 5

    .line 348
    new-instance v0, Lcom/onesignal/OSNotificationPayload;

    invoke-direct {v0}, Lcom/onesignal/OSNotificationPayload;-><init>()V

    .line 350
    :try_start_5
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->getCustomJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "i"

    .line 351
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->notificationID:Ljava/lang/String;

    const-string v2, "ti"

    .line 352
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->templateId:Ljava/lang/String;

    const-string v2, "tn"

    .line 353
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->templateName:Ljava/lang/String;

    .line 354
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->rawPayload:Ljava/lang/String;

    const-string v2, "a"

    .line 355
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    const-string v2, "u"

    const/4 v3, 0x0

    .line 356
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->launchURL:Ljava/lang/String;

    const-string v1, "alert"

    .line 358
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->body:Ljava/lang/String;

    const-string v1, "title"

    .line 359
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    const-string v1, "sicon"

    .line 360
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->smallIcon:Ljava/lang/String;

    const-string v1, "bicon"

    .line 361
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->bigPicture:Ljava/lang/String;

    const-string v1, "licon"

    .line 362
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->largeIcon:Ljava/lang/String;

    const-string v1, "sound"

    .line 363
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->sound:Ljava/lang/String;

    const-string v1, "grp"

    .line 364
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->groupKey:Ljava/lang/String;

    const-string v1, "grp_msg"

    .line 365
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->groupMessage:Ljava/lang/String;

    const-string v1, "bgac"

    .line 366
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->smallIconAccentColor:Ljava/lang/String;

    const-string v1, "ledc"

    .line 367
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->ledColor:Ljava/lang/String;

    const-string v1, "vis"

    .line 368
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 370
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/onesignal/OSNotificationPayload;->lockScreenVisibility:I

    :cond_96
    const-string v1, "from"

    .line 371
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->fromProjectNumber:Ljava/lang/String;

    const-string v1, "pri"

    const/4 v2, 0x0

    .line 372
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/onesignal/OSNotificationPayload;->priority:I

    const-string v1, "collapse_key"

    .line 373
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "do_not_collapse"

    .line 374
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b7

    .line 375
    iput-object v1, v0, Lcom/onesignal/OSNotificationPayload;->collapseId:Ljava/lang/String;
    :try_end_b7
    .catchall {:try_start_5 .. :try_end_b7} :catchall_d0

    .line 378
    :cond_b7
    :try_start_b7
    invoke-static {v0}, Lcom/onesignal/NotificationBundleProcessor;->setActionButtons(Lcom/onesignal/OSNotificationPayload;)V
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_bb

    goto :goto_c3

    :catchall_bb
    move-exception v1

    .line 380
    :try_start_bc
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Error assigning OSNotificationPayload.actionButtons values!"

    invoke-static {v2, v3, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c3
    .catchall {:try_start_bc .. :try_end_c3} :catchall_d0

    .line 384
    :goto_c3
    :try_start_c3
    invoke-static {v0, p0}, Lcom/onesignal/NotificationBundleProcessor;->setBackgroundImageLayout(Lcom/onesignal/OSNotificationPayload;Lorg/json/JSONObject;)V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_c7

    goto :goto_d8

    :catchall_c7
    move-exception p0

    .line 386
    :try_start_c8
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Error assigning OSNotificationPayload.backgroundImageLayout values!"

    invoke-static {v1, v2, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_cf
    .catchall {:try_start_c8 .. :try_end_cf} :catchall_d0

    goto :goto_d8

    :catchall_d0
    move-exception p0

    .line 389
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Error assigning OSNotificationPayload values!"

    invoke-static {v1, v2, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d8
    return-object v0
.end method

.method static ProcessFromGCMIntentService(Landroid/content/Context;Lcom/onesignal/BundleCompat;Lcom/onesignal/NotificationExtenderService$OverrideSettings;)V
    .registers 8

    const-string v0, "android_notif_id"

    .line 73
    invoke-static {p0}, Lcom/onesignal/OneSignal;->setAppContext(Landroid/content/Context;)V

    :try_start_5
    const-string v1, "json_payload"

    .line 75
    invoke-interface {p1, v1}, Lcom/onesignal/BundleCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_24

    .line 77
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "json_payload key is nonexistent from mBundle passed to ProcessFromGCMIntentService: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 81
    :cond_24
    new-instance v2, Lcom/onesignal/NotificationGenerationJob;

    invoke-direct {v2, p0}, Lcom/onesignal/NotificationGenerationJob;-><init>(Landroid/content/Context;)V

    const-string v3, "restoring"

    const/4 v4, 0x0

    .line 82
    invoke-interface {p1, v3, v4}, Lcom/onesignal/BundleCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    const-string v3, "timestamp"

    .line 83
    invoke-interface {p1, v3}, Lcom/onesignal/BundleCompat;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/onesignal/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    .line 84
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 85
    iget-object v1, v2, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/onesignal/NotificationBundleProcessor;->inAppPreviewPushUUID(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4a

    const/4 v4, 0x1

    :cond_4a
    iput-boolean v4, v2, Lcom/onesignal/NotificationGenerationJob;->isInAppPreviewPush:Z

    .line 87
    iget-boolean v1, v2, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-nez v1, :cond_5d

    iget-boolean v1, v2, Lcom/onesignal/NotificationGenerationJob;->isInAppPreviewPush:Z

    if-nez v1, :cond_5d

    iget-object v1, v2, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 89
    invoke-static {p0, v1}, Lcom/onesignal/OneSignal;->notValidOrDuplicated(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result p0

    if-eqz p0, :cond_5d

    return-void

    .line 92
    :cond_5d
    invoke-interface {p1, v0}, Lcom/onesignal/BundleCompat;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_70

    if-nez p2, :cond_6a

    .line 94
    new-instance p2, Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-direct {p2}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;-><init>()V

    .line 95
    :cond_6a
    invoke-interface {p1, v0}, Lcom/onesignal/BundleCompat;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p2, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    .line 98
    :cond_70
    iput-object p2, v2, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 99
    invoke-static {v2}, Lcom/onesignal/NotificationBundleProcessor;->ProcessJobForDisplay(Lcom/onesignal/NotificationGenerationJob;)I

    .line 103
    iget-boolean p0, v2, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-eqz p0, :cond_83

    const/16 p0, 0x64

    .line 104
    invoke-static {p0}, Lcom/onesignal/OSUtils;->sleep(I)V
    :try_end_7e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_7e} :catch_7f

    goto :goto_83

    :catch_7f
    move-exception p0

    .line 106
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_83
    :goto_83
    return-void
.end method

.method static ProcessJobForDisplay(Lcom/onesignal/NotificationGenerationJob;)I
    .registers 5

    .line 111
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppAlertNotificationEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/onesignal/OneSignal;->isAppActive()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iput-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->showAsAlert:Z

    .line 112
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->processCollapseKey(Lcom/onesignal/NotificationGenerationJob;)V

    .line 114
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->shouldDisplayNotif(Lcom/onesignal/NotificationGenerationJob;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 116
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->fromJsonPayload(Lcom/onesignal/NotificationGenerationJob;)V

    .line 118
    :cond_1f
    iget-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-nez v0, :cond_47

    iget-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->isInAppPreviewPush:Z

    if-nez v0, :cond_47

    .line 119
    invoke-static {p0, v2}, Lcom/onesignal/NotificationBundleProcessor;->processNotification(Lcom/onesignal/NotificationGenerationJob;Z)V

    .line 121
    :try_start_2a
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "androidNotificationId"

    .line 122
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    invoke-static {v0}, Lcom/onesignal/NotificationBundleProcessor;->newJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    iget-boolean v2, p0, Lcom/onesignal/NotificationGenerationJob;->showAsAlert:Z

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignal;->handleNotificationReceived(Lorg/json/JSONArray;ZZ)V
    :try_end_47
    .catchall {:try_start_2a .. :try_end_47} :catchall_47

    .line 127
    :catchall_47
    :cond_47
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method static synthetic access$000(Landroid/os/Bundle;)Lorg/json/JSONArray;
    .registers 1

    .line 59
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJsonArray(Landroid/os/Bundle;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method static bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .registers 8

    .line 283
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 284
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 286
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 288
    :try_start_19
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_20} :catch_21

    goto :goto_d

    :catch_21
    move-exception v3

    .line 290
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bundleAsJSONObject error for key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_39
    return-object v0
.end method

.method private static bundleAsJsonArray(Landroid/os/Bundle;)Lorg/json/JSONArray;
    .registers 2

    .line 142
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 143
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-object v0
.end method

.method static getCustomJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 568
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "custom"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static hasRemoteResource(Landroid/os/Bundle;)Z
    .registers 3

    const-string v0, "licon"

    .line 572
    invoke-static {p0, v0}, Lcom/onesignal/NotificationBundleProcessor;->isBuildKeyRemote(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "bicon"

    .line 573
    invoke-static {p0, v0}, Lcom/onesignal/NotificationBundleProcessor;->isBuildKeyRemote(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    const-string v1, "bg_img"

    .line 574
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    :goto_1d
    return p0
.end method

.method static inAppPreviewPushUUID(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 513
    :try_start_1
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->getCustomJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_5} :catch_1f

    const-string v1, "a"

    .line 518
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    return-object v0

    .line 521
    :cond_e
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "os_in_app_message_preview_id"

    .line 522
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 523
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_1f
    :cond_1f
    return-object v0
.end method

.method private static isBuildKeyRemote(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 3

    const-string v0, ""

    .line 578
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "http://"

    .line 579
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1d

    const-string p1, "https://"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    :goto_1e
    return p0
.end method

.method static newJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .registers 2

    .line 564
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method static processBundleFromReceiver(Landroid/content/Context;Landroid/os/Bundle;)Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;
    .registers 6

    .line 462
    new-instance v0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;

    invoke-direct {v0}, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;-><init>()V

    .line 465
    invoke-static {p1}, Lcom/onesignal/OSNotificationFormatHelper;->isOneSignalBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_c

    return-object v0

    :cond_c
    const/4 v1, 0x1

    .line 467
    iput-boolean v1, v0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->isOneSignalPayload:Z

    .line 469
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->unMinifyButtonsFromBundle(Landroid/os/Bundle;)V

    .line 471
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v2

    .line 474
    invoke-static {v2}, Lcom/onesignal/NotificationBundleProcessor;->inAppPreviewPushUUID(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 477
    invoke-static {}, Lcom/onesignal/OneSignal;->isAppActive()Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 478
    iput-boolean v1, v0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->inAppPreviewShown:Z

    .line 479
    invoke-static {}, Lcom/onesignal/OSInAppMessageController;->getController()Lcom/onesignal/OSInAppMessageController;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/onesignal/OSInAppMessageController;->displayPreviewMessage(Ljava/lang/String;)V

    :cond_2b
    return-object v0

    .line 485
    :cond_2c
    invoke-static {p0, p1, v0}, Lcom/onesignal/NotificationBundleProcessor;->startExtenderService(Landroid/content/Context;Landroid/os/Bundle;Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;)Z

    move-result v3

    if-eqz v3, :cond_33

    return-object v0

    .line 489
    :cond_33
    invoke-static {p0, v2}, Lcom/onesignal/OneSignal;->notValidOrDuplicated(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->isDup:Z

    .line 490
    iget-boolean v2, v0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->isDup:Z

    if-eqz v2, :cond_3e

    return-object v0

    :cond_3e
    const-string v2, "alert"

    .line 493
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 496
    invoke-static {v2}, Lcom/onesignal/NotificationBundleProcessor;->shouldDisplay(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5d

    const/4 v2, -0x1

    .line 497
    invoke-static {p0, p1, v1, v2}, Lcom/onesignal/NotificationBundleProcessor;->saveAndProcessNotification(Landroid/content/Context;Landroid/os/Bundle;ZI)V

    .line 500
    new-instance p0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/NotificationBundleProcessor$1;

    invoke-direct {v1, p1}, Lcom/onesignal/NotificationBundleProcessor$1;-><init>(Landroid/os/Bundle;)V

    const-string p1, "OS_PROC_BUNDLE"

    invoke-direct {p0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_5d
    return-object v0
.end method

.method private static processCollapseKey(Lcom/onesignal/NotificationGenerationJob;)V
    .registers 13

    const-string v0, "android_notification_id"

    .line 426
    iget-boolean v1, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-eqz v1, :cond_7

    return-void

    .line 428
    :cond_7
    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    const-string v2, "collapse_key"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "do_not_collapse"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_85

    .line 430
    :cond_20
    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    iget-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v2

    const/4 v3, 0x0

    .line 437
    :try_start_2d
    invoke-virtual {v2}, Lcom/onesignal/OneSignalDbHelper;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "notification"

    .line 438
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "collapse_id = ? AND dismissed = 0 AND opened = 0 "

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 447
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 448
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 449
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/NotificationGenerationJob;->setAndroidIdWithOutOverriding(Ljava/lang/Integer;)V
    :try_end_5b
    .catchall {:try_start_2d .. :try_end_5b} :catchall_64

    :cond_5b
    if-eqz v3, :cond_77

    .line 455
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_77

    goto :goto_74

    :catchall_64
    move-exception p0

    .line 452
    :try_start_65
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Could not read DB to find existing collapse_key!"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_78

    if-eqz v3, :cond_77

    .line 455
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_77

    .line 456
    :goto_74
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_77
    return-void

    :catchall_78
    move-exception p0

    if-eqz v3, :cond_84

    .line 455
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_84

    .line 456
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 457
    :cond_84
    throw p0

    :cond_85
    :goto_85
    return-void
.end method

.method static processNotification(Lcom/onesignal/NotificationGenerationJob;Z)V
    .registers 2

    .line 160
    invoke-static {p0, p1}, Lcom/onesignal/NotificationBundleProcessor;->saveNotification(Lcom/onesignal/NotificationGenerationJob;Z)V

    .line 162
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->isNotificationToDisplay()Z

    move-result p1

    if-nez p1, :cond_a

    return-void

    .line 164
    :cond_a
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getApiNotificationId()Ljava/lang/String;

    move-result-object p0

    .line 165
    invoke-static {}, Lcom/onesignal/OneSignal;->getSessionManager()Lcom/onesignal/OSSessionManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onesignal/OSSessionManager;->onNotificationReceived(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/onesignal/OSReceiveReceiptController;->getInstance()Lcom/onesignal/OSReceiveReceiptController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onesignal/OSReceiveReceiptController;->sendReceiveReceipt(Ljava/lang/String;)V

    return-void
.end method

.method private static saveAndProcessNotification(Landroid/content/Context;Landroid/os/Bundle;ZI)V
    .registers 5

    .line 148
    new-instance v0, Lcom/onesignal/NotificationGenerationJob;

    invoke-direct {v0, p0}, Lcom/onesignal/NotificationGenerationJob;-><init>(Landroid/content/Context;)V

    .line 149
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 150
    new-instance p0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-direct {p0}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;-><init>()V

    iput-object p0, v0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 151
    iget-object p0, v0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    .line 153
    invoke-static {v0, p2}, Lcom/onesignal/NotificationBundleProcessor;->processNotification(Lcom/onesignal/NotificationGenerationJob;Z)V

    return-void
.end method

.method private static saveNotification(Lcom/onesignal/NotificationGenerationJob;Z)V
    .registers 16

    const-string v0, "grp"

    const-string v1, "collapse_key"

    const-string v2, "Error closing transaction! "

    .line 176
    iget-object v3, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    .line 177
    iget-object v4, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 180
    :try_start_a
    iget-object v5, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/onesignal/NotificationBundleProcessor;->getCustomJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    .line 182
    iget-object v6, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v6
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_16} :catch_135

    const/4 v7, 0x0

    .line 186
    :try_start_17
    invoke-virtual {v6}, Lcom/onesignal/OneSignalDbHelper;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1b} :catch_116
    .catchall {:try_start_17 .. :try_end_1b} :catchall_114

    .line 188
    :try_start_1b
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 192
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->isNotificationToDisplay()Z

    move-result v8
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_22} :catch_111
    .catchall {:try_start_1b .. :try_end_22} :catchall_10e

    const-string v9, "notification"

    const/4 v10, 0x1

    if-eqz v8, :cond_50

    .line 193
    :try_start_27
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "android_notification_id = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidIdWithoutCreate()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 195
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "dismissed"

    .line 196
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    invoke-virtual {v6, v9, v11, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 199
    invoke-static {v6, v3}, Lcom/onesignal/BadgeCountUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 203
    :cond_50
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "notification_id"

    const-string v12, "i"

    .line 204
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    const-string v5, "group_id"

    .line 206
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_6f
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const-string v0, "do_not_collapse"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    const-string v0, "collapse_id"

    .line 208
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    const-string v0, "opened"

    if-eqz p1, :cond_8f

    goto :goto_90

    :cond_8f
    const/4 v10, 0x0

    .line 210
    :goto_90
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez p1, :cond_a6

    const-string v0, "android_notification_id"

    .line 212
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidIdWithoutCreate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    :cond_a6
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_b9

    const-string v0, "title"

    .line 215
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_b9
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_cc

    const-string v0, "message"

    .line 217
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getBody()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_cc
    const-string p0, "google.sent_time"

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    invoke-virtual {v4, p0, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v10, 0x3e8

    div-long/2addr v0, v10

    const-string p0, "google.ttl"

    const v5, 0x3f480

    .line 221
    invoke-virtual {v4, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    int-to-long v10, p0

    add-long/2addr v0, v10

    const-string p0, "expire_time"

    .line 223
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "full_data"

    .line 225
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v6, v9, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    if-nez p1, :cond_fe

    .line 230
    invoke-static {v6, v3}, Lcom/onesignal/BadgeCountUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 231
    :cond_fe
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_101} :catch_111
    .catchall {:try_start_27 .. :try_end_101} :catchall_10e

    if-eqz v6, :cond_139

    .line 237
    :try_start_103
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_106
    .catchall {:try_start_103 .. :try_end_106} :catchall_107

    goto :goto_139

    :catchall_107
    move-exception p0

    .line 239
    :try_start_108
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    :goto_10a
    invoke-static {p1, v2, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10d
    .catch Lorg/json/JSONException; {:try_start_108 .. :try_end_10d} :catch_135

    goto :goto_139

    :catchall_10e
    move-exception p0

    move-object v7, v6

    goto :goto_128

    :catch_111
    move-exception p0

    move-object v7, v6

    goto :goto_117

    :catchall_114
    move-exception p0

    goto :goto_128

    :catch_116
    move-exception p0

    .line 233
    :goto_117
    :try_start_117
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Error saving notification record! "

    invoke-static {p1, v0, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11e
    .catchall {:try_start_117 .. :try_end_11e} :catchall_114

    if-eqz v7, :cond_139

    .line 237
    :try_start_120
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_123
    .catchall {:try_start_120 .. :try_end_123} :catchall_124

    goto :goto_139

    :catchall_124
    move-exception p0

    .line 239
    :try_start_125
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;
    :try_end_127
    .catch Lorg/json/JSONException; {:try_start_125 .. :try_end_127} :catch_135

    goto :goto_10a

    :goto_128
    if-eqz v7, :cond_134

    .line 237
    :try_start_12a
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_12d
    .catchall {:try_start_12a .. :try_end_12d} :catchall_12e

    goto :goto_134

    :catchall_12e
    move-exception p1

    .line 239
    :try_start_12f
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {v0, v2, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    :cond_134
    :goto_134
    throw p0
    :try_end_135
    .catch Lorg/json/JSONException; {:try_start_12f .. :try_end_135} :catch_135

    :catch_135
    move-exception p0

    .line 244
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_139
    :goto_139
    return-void
.end method

.method private static setActionButtons(Lcom/onesignal/OSNotificationPayload;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    const-string v1, "actionButtons"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 398
    iget-object v0, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 399
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/onesignal/OSNotificationPayload;->actionButtons:Ljava/util/List;

    const/4 v2, 0x0

    .line 401
    :goto_1c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4c

    .line 402
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 403
    new-instance v4, Lcom/onesignal/OSNotificationPayload$ActionButton;

    invoke-direct {v4}, Lcom/onesignal/OSNotificationPayload$ActionButton;-><init>()V

    const-string v5, "id"

    const/4 v6, 0x0

    .line 404
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/onesignal/OSNotificationPayload$ActionButton;->id:Ljava/lang/String;

    const-string v5, "text"

    .line 405
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/onesignal/OSNotificationPayload$ActionButton;->text:Ljava/lang/String;

    const-string v5, "icon"

    .line 406
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/onesignal/OSNotificationPayload$ActionButton;->icon:Ljava/lang/String;

    .line 407
    iget-object v3, p0, Lcom/onesignal/OSNotificationPayload;->actionButtons:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 409
    :cond_4c
    iget-object v0, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    const-string v2, "actionId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 410
    iget-object p0, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_58
    return-void
.end method

.method private static setBackgroundImageLayout(Lcom/onesignal/OSNotificationPayload;Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "bg_img"

    const/4 v1, 0x0

    .line 415
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 417
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 418
    new-instance p1, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    invoke-direct {p1}, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;-><init>()V

    iput-object p1, p0, Lcom/onesignal/OSNotificationPayload;->backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    .line 419
    iget-object p1, p0, Lcom/onesignal/OSNotificationPayload;->backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    const-string v1, "img"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;->image:Ljava/lang/String;

    .line 420
    iget-object p1, p0, Lcom/onesignal/OSNotificationPayload;->backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    const-string v1, "tc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;->titleTextColor:Ljava/lang/String;

    .line 421
    iget-object p0, p0, Lcom/onesignal/OSNotificationPayload;->backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    const-string p1, "bc"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;->bodyTextColor:Ljava/lang/String;

    :cond_33
    return-void
.end method

.method static shouldDisplay(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_e

    const-string v2, ""

    .line 554
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    .line 555
    :goto_f
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppAlertNotificationEnabled()Z

    move-result v2

    .line 556
    invoke-static {}, Lcom/onesignal/OneSignal;->isAppActive()Z

    move-result v3

    if-eqz p0, :cond_24

    .line 558
    invoke-static {}, Lcom/onesignal/OneSignal;->getNotificationsWhenActiveEnabled()Z

    move-result p0

    if-nez p0, :cond_25

    if-nez v2, :cond_25

    if-nez v3, :cond_24

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :cond_25
    :goto_25
    return v0
.end method

.method private static shouldDisplayNotif(Lcom/onesignal/NotificationGenerationJob;)Z
    .registers 4

    .line 133
    iget-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->isInAppPreviewPush:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v0, v2, :cond_c

    return v1

    .line 137
    :cond_c
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->hasExtender()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object p0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    const-string v0, "alert"

    .line 138
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->shouldDisplay(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    :cond_20
    const/4 v1, 0x1

    :cond_21
    return v1
.end method

.method private static startExtenderService(Landroid/content/Context;Landroid/os/Bundle;Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;)Z
    .registers 9

    .line 529
    invoke-static {p0}, Lcom/onesignal/NotificationExtenderService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 533
    :cond_8
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "json_payload"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-string v4, "timestamp"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "pri"

    const-string v3, "0"

    .line 536
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0x9

    const/4 v3, 0x1

    if-le p1, v2, :cond_33

    const/4 v1, 0x1

    .line 538
    :cond_33
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p1, v2, :cond_44

    .line 541
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    const v2, 0x7b7e1b69

    .line 539
    invoke-static {p0, p1, v2, v0, v1}, Lcom/onesignal/NotificationExtenderService;->enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;Z)V

    goto :goto_47

    .line 547
    :cond_44
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 549
    :goto_47
    iput-boolean v3, p2, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->hasExtenderService:Z

    return v3
.end method

.method private static unMinifyButtonsFromBundle(Landroid/os/Bundle;)V
    .registers 14

    const-string v0, "n"

    const-string v1, "custom"

    const-string v2, "p"

    const-string v3, "i"

    const-string v4, "a"

    const-string v5, "o"

    .line 299
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    return-void

    .line 303
    :cond_13
    :try_start_13
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 307
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    goto :goto_2c

    .line 309
    :cond_27
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 311
    :goto_2c
    new-instance v8, Lorg/json/JSONArray;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 314
    :goto_39
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_78

    .line 315
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 317
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 318
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_58

    .line 322
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 323
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_59

    :cond_58
    move-object v11, v10

    :goto_59
    const-string v12, "id"

    .line 327
    invoke-virtual {v9, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "text"

    .line 328
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_75

    const-string v10, "icon"

    .line 331
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_75
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    :cond_78
    const-string v0, "actionButtons"

    .line 336
    invoke-virtual {v7, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "actionId"

    const-string v2, "__DEFAULT__"

    .line 337
    invoke-virtual {v7, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 339
    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    :cond_8d
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_94} :catch_95

    goto :goto_99

    :catch_95
    move-exception p0

    .line 343
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_99
    return-void
.end method

.class public Lcom/appsgeyser/sdk/datasdk/DataSdkController;
.super Ljava/lang/Object;
.source "DataSdkController.java"


# direct methods
.method static acceptAllActiveSdk(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .registers 2

    .line 105
    invoke-static {p0, p1}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->acceptSdk(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V

    .line 106
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p0

    const-string p1, "click_accept_sdk_dialog"

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;)V

    return-void
.end method

.method private static acceptSdk(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .registers 4

    .line 200
    new-instance v0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    const-string p0, "sdkIsAccepted"

    const/4 v1, 0x1

    .line 201
    invoke-virtual {v0, p0, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefBoolean(Ljava/lang/String;Z)V

    .line 203
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getAppsgeyserSdk()Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->isActive()Z

    move-result p0

    if-eqz p0, :cond_1a

    const-string p0, "appsgeyserSdk_eulaAccepted"

    .line 204
    invoke-virtual {v0, p0, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefBoolean(Ljava/lang/String;Z)V

    :cond_1a
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V
    .registers 3

    .line 34
    invoke-static {p0, p1, p2}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->declineActiveSdk(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V

    return-void
.end method

.method private static checkPermissions(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Ljava/lang/String;)V
    .registers 5

    .line 189
    invoke-static {p1, p0}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->isPermissionsRequired(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 190
    invoke-static {p0}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->isSdkAccepted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_17

    .line 194
    :cond_13
    invoke-static {p1, p0}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->initSdk(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)V

    goto :goto_22

    .line 191
    :cond_17
    :goto_17
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->setConsentRequestProcessActive(Z)V

    .line 192
    invoke-static {p0, p1, p2}, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->startRequestPermissions(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Ljava/lang/String;)V

    :goto_22
    return-void
.end method

.method private static declineActiveSdk(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V
    .registers 5

    const-string p0, "countOfTry"

    const/4 v0, -0x1

    .line 156
    invoke-virtual {p2, p0, v0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 159
    invoke-virtual {p2, p0, v0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefInt(Ljava/lang/String;I)V

    .line 160
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p0

    const-string v1, "click_decline_sdk_dialog"

    invoke-virtual {p0, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;)V

    if-nez v0, :cond_27

    .line 164
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getAppsgeyserSdk()Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->isActive()Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x0

    const-string p1, "appsgeyserSdk_eulaAccepted"

    .line 165
    invoke-virtual {p2, p1, p0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefBoolean(Ljava/lang/String;Z)V

    :cond_27
    return-void
.end method

.method static declineAllActiveSdk(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V
    .registers 7

    .line 110
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getStartupELUAConfirmationDialogAllow()Z

    move-result v0

    if-nez v0, :cond_32

    .line 112
    check-cast p2, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;

    .line 113
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    sget v1, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_are_you_sure_decline_sdk:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 115
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 116
    sget v1, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_close_app:I

    new-instance v2, Lcom/appsgeyser/sdk/datasdk/DataSdkController$1;

    invoke-direct {v2, p2, p0, p1}, Lcom/appsgeyser/sdk/datasdk/DataSdkController$1;-><init>(Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 132
    sget p0, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_back:I

    new-instance v1, Lcom/appsgeyser/sdk/datasdk/DataSdkController$2;

    invoke-direct {v1, p2, p3, p1}, Lcom/appsgeyser/sdk/datasdk/DataSdkController$2;-><init>(Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;Ljava/lang/String;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V

    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 140
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 141
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_54

    .line 143
    :cond_32
    new-instance p3, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {p3, p0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-static {p0, p1, p3}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->declineActiveSdk(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V

    .line 145
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p3, v0, :cond_4e

    invoke-static {p1, p0}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->isPermissionsRequired(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_4e

    .line 146
    check-cast p0, Landroid/app/Activity;

    const/16 p2, 0x4e

    invoke-static {p0, p1, p2}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->requestAllActiveByDefaultPermissions(Landroid/app/Activity;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;I)V

    goto :goto_54

    .line 149
    :cond_4e
    invoke-static {p1, p0}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->initSdk(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)V

    .line 150
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    :goto_54
    return-void
.end method

.method static initSdk(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)V
    .registers 2

    .line 171
    invoke-static {}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->getFastTrackAdsController()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 172
    invoke-static {}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->getFastTrackAdsController()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->consentRequestProcessFinished()V

    .line 174
    :cond_d
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->setConsentRequestProcessActive(Z)V

    return-void
.end method

.method static isSdkAccepted(Landroid/content/Context;)Z
    .registers 3

    .line 181
    new-instance v0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    const-string p0, "sdkIsAccepted"

    const/4 v1, 0x0

    .line 182
    invoke-virtual {v0, p0, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static onGetConfigErrorResponse(Landroid/content/Context;)V
    .registers 3

    .line 93
    new-instance v0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    const-string p0, "appsgeyserSdk_isActive"

    const/4 v1, 0x0

    .line 95
    invoke-virtual {v0, p0, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefBoolean(Ljava/lang/String;Z)Z

    return-void
.end method

.method public static startDataSdkController(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .registers 14

    .line 46
    new-instance v0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    const-string v1, "countOfTry"

    const/4 v2, -0x1

    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefInt(Ljava/lang/String;I)I

    move-result v3

    .line 48
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getCountOfTry()I

    move-result v4

    if-ne v2, v3, :cond_15

    .line 51
    invoke-virtual {v0, v1, v4}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefInt(Ljava/lang/String;I)V

    .line 54
    :cond_15
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getAppsgeyserSdk()Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;

    move-result-object v3

    .line 57
    invoke-virtual {v3}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->isActive()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2f

    .line 58
    invoke-virtual {v3}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->isActiveByDefault()Z

    move-result v4

    if-nez v4, :cond_2e

    const-string v4, "appsgeyserSdk_eulaAccepted"

    invoke-virtual {v0, v4, v5}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2f

    :cond_2e
    const/4 v5, 0x1

    :cond_2f
    const-string v4, "appsgeyserSdk_isActive"

    .line 56
    invoke-virtual {v0, v4, v5}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefBoolean(Ljava/lang/String;Z)V

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "elapsedTime"

    const-wide/16 v4, -0x1

    .line 62
    invoke-virtual {v0, v2, v4, v5}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v10, v8, v6

    if-lez v1, :cond_93

    cmp-long v1, v4, v6

    if-eqz v1, :cond_53

    const-wide/32 v4, 0x6ddd00

    cmp-long v1, v10, v4

    if-lez v1, :cond_93

    .line 69
    :cond_53
    invoke-static {p0}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->isSdkAccepted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8e

    .line 71
    invoke-virtual {v3}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->getTextOfPolicy()Ljava/lang/String;

    move-result-object v1

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    invoke-virtual {v3}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->isActive()Z

    move-result v5

    if-eqz v5, :cond_86

    invoke-virtual {v3}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;->isActiveByDefault()Z

    move-result v3

    if-nez v3, :cond_86

    .line 75
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_86

    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_83

    const-string v3, "\n\n"

    .line 77
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_83
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->checkPermissions(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Ljava/lang/String;)V

    goto :goto_96

    :cond_8e
    const/4 v1, 0x0

    .line 83
    invoke-static {p0, p1, v1}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->checkPermissions(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Ljava/lang/String;)V

    goto :goto_96

    .line 86
    :cond_93
    invoke-static {p1, p0}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->initSdk(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)V

    .line 89
    :goto_96
    invoke-virtual {v0, v2, v8, v9}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefLong(Ljava/lang/String;J)V

    return-void
.end method

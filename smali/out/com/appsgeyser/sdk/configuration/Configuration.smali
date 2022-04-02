.class public final Lcom/appsgeyser/sdk/configuration/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field private static instance:Lcom/appsgeyser/sdk/configuration/Configuration;


# instance fields
.field private appGuid:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private publisherName:Ljava/lang/String;

.field private registered:Z

.field private settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->publisherName:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->applicationId:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->appName:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->appGuid:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->registered:Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;
    .registers 2

    .line 40
    sget-object v0, Lcom/appsgeyser/sdk/configuration/Configuration;->instance:Lcom/appsgeyser/sdk/configuration/Configuration;

    if-nez v0, :cond_b

    .line 41
    new-instance v0, Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;-><init>()V

    sput-object v0, Lcom/appsgeyser/sdk/configuration/Configuration;->instance:Lcom/appsgeyser/sdk/configuration/Configuration;

    .line 44
    :cond_b
    new-instance v0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    .line 45
    sget-object p0, Lcom/appsgeyser/sdk/configuration/Configuration;->instance:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-direct {p0, v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->setSettingsCoder(Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V

    .line 47
    sget-object p0, Lcom/appsgeyser/sdk/configuration/Configuration;->instance:Lcom/appsgeyser/sdk/configuration/Configuration;

    return-object p0
.end method

.method private setSettingsCoder(Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    return-void
.end method


# virtual methods
.method public clearApplicationSettings()V
    .registers 4

    const-string v0, ""

    .line 115
    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->applicationId:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->appGuid:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-string v2, "ApplicationId"

    invoke-virtual {v1, v2, v0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-string v2, "AppGuid"

    invoke-virtual {v1, v2, v0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAppGuid()Ljava/lang/String;
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->appGuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 72
    invoke-static {}, Lcom/appsgeyser/sdk/GuidGenerator;->generateNewGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->appGuid:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    if-eqz v1, :cond_17

    const-string v2, "AppGuid"

    .line 74
    invoke-virtual {v1, v2, v0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_17
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->appGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricaOnStartEvent()Ljava/lang/String;
    .registers 4

    .line 142
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-string v1, "metricaJsonLoad"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublisherName()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->publisherName:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsCoder()Lcom/appsgeyser/sdk/configuration/PreferencesCoder;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    return-object v0
.end method

.method public getTemplateVersion()Ljava/lang/String;
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-string v1, "TemplateVersion"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRegistered()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->registered:Z

    return v0
.end method

.method public loadConfiguration()V
    .registers 4

    const-string v0, ""

    .line 60
    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->publisherName:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-string v2, "ApplicationId"

    invoke-virtual {v1, v2, v0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->applicationId:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-string v2, "AppGuid"

    invoke-virtual {v1, v2, v0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->appGuid:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-string v1, "Registered"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->registered:Z

    return-void
.end method

.method public registerNew()V
    .registers 4

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->registered:Z

    .line 123
    iget-object v1, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-string v2, "Registered"

    invoke-virtual {v1, v2, v0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .registers 4

    .line 89
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->applicationId:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    if-eqz v0, :cond_b

    const-string v1, "ApplicationId"

    .line 91
    invoke-virtual {v0, v1, p1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public setMetricaOnStartEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 130
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "templateVersion"

    .line 131
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "appsgeyserSdkVersion"

    const-string p2, "2.19.s"

    .line 132
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    iget-object p1, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-string p2, "metricaJsonLoad"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p1

    .line 136
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_21
    return-void
.end method

.method public setTemplateVersion(Ljava/lang/String;)V
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-string v1, "TemplateVersion"

    invoke-virtual {v0, v1, p1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

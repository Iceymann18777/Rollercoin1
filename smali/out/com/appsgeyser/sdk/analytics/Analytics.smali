.class public final Lcom/appsgeyser/sdk/analytics/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# static fields
.field private static instance:Lcom/appsgeyser/sdk/analytics/Analytics;


# instance fields
.field private configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

.field private serverClient:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

.field private usageAlreadySent:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/analytics/Analytics;->usageAlreadySent:Z

    .line 34
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/analytics/Analytics;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    .line 35
    invoke-static {}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/analytics/Analytics;->serverClient:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/sdk/analytics/Analytics;)Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/appsgeyser/sdk/analytics/Analytics;->serverClient:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/analytics/Analytics;
    .registers 3

    const-class v0, Lcom/appsgeyser/sdk/analytics/Analytics;

    monitor-enter v0

    .line 27
    :try_start_3
    sget-object v1, Lcom/appsgeyser/sdk/analytics/Analytics;->instance:Lcom/appsgeyser/sdk/analytics/Analytics;

    if-nez v1, :cond_e

    .line 28
    new-instance v1, Lcom/appsgeyser/sdk/analytics/Analytics;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/analytics/Analytics;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/appsgeyser/sdk/analytics/Analytics;->instance:Lcom/appsgeyser/sdk/analytics/Analytics;

    .line 30
    :cond_e
    sget-object p0, Lcom/appsgeyser/sdk/analytics/Analytics;->instance:Lcom/appsgeyser/sdk/analytics/Analytics;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private sendActivityStartedInfo(Landroid/content/Context;)V
    .registers 5

    .line 43
    iget-object v0, p0, Lcom/appsgeyser/sdk/analytics/Analytics;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->isRegistered()Z

    move-result v0

    const-string v1, " , guid "

    if-nez v0, :cond_4a

    .line 44
    iget-object v0, p0, Lcom/appsgeyser/sdk/analytics/Analytics;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->registerNew()V

    .line 45
    iget-object v0, p0, Lcom/appsgeyser/sdk/analytics/Analytics;->serverClient:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->sendAfterInstallInfo(Landroid/content/Context;)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App install was sent: id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/sdk/analytics/Analytics;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {v2}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/sdk/analytics/Analytics;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {v2}, Lcom/appsgeyser/sdk/configuration/Configuration;->getAppGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsgeyser/sdk/Logger;->DebugLog(Ljava/lang/String;)V

    .line 50
    invoke-static {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v0

    .line 51
    new-instance v2, Lcom/appsgeyser/sdk/analytics/Analytics$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/appsgeyser/sdk/analytics/Analytics$1;-><init>(Lcom/appsgeyser/sdk/analytics/Analytics;Lcom/android/installreferrer/api/InstallReferrerClient;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V

    .line 87
    :cond_4a
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/analytics/Analytics;->usageAlreadySent:Z

    if-nez v0, :cond_7c

    .line 88
    iget-object v0, p0, Lcom/appsgeyser/sdk/analytics/Analytics;->serverClient:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->sendUsageInfo(Landroid/content/Context;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App usage was sent: id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/sdk/analytics/Analytics;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {v2}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/analytics/Analytics;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getAppGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsgeyser/sdk/Logger;->DebugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/analytics/Analytics;->usageAlreadySent:Z

    .line 92
    :cond_7c
    iget-object v0, p0, Lcom/appsgeyser/sdk/analytics/Analytics;->serverClient:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->sendUpdateInfo(Landroid/content/Context;)V

    .line 93
    iget-object v0, p0, Lcom/appsgeyser/sdk/analytics/Analytics;->serverClient:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->sendApplicationMode(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public activityStarted(Landroid/content/Context;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/analytics/Analytics;->sendActivityStartedInfo(Landroid/content/Context;)V

    return-void
.end method

.method public isUsageAlreadySent()Z
    .registers 2

    .line 97
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/analytics/Analytics;->usageAlreadySent:Z

    return v0
.end method

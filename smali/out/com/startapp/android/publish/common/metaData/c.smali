.class public Lcom/startapp/android/publish/common/metaData/c;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/startapp/android/publish/common/model/AdPreferences;

.field private c:Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;

.field private d:Lcom/startapp/android/publish/common/metaData/MetaData;

.field private e:Lcom/startapp/android/publish/ads/banner/c;

.field private f:Lcom/startapp/android/publish/ads/splash/f;

.field private g:Lcom/startapp/android/publish/cache/d;

.field private h:Lcom/startapp/android/publish/adsCommon/adinformation/a;

.field private i:Lcom/startapp/android/publish/adsCommon/b;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/c;->d:Lcom/startapp/android/publish/common/metaData/MetaData;

    .line 33
    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/c;->e:Lcom/startapp/android/publish/ads/banner/c;

    .line 34
    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/c;->f:Lcom/startapp/android/publish/ads/splash/f;

    .line 35
    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/c;->g:Lcom/startapp/android/publish/cache/d;

    .line 36
    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/c;->h:Lcom/startapp/android/publish/adsCommon/adinformation/a;

    .line 37
    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/c;->i:Lcom/startapp/android/publish/adsCommon/b;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/c;->j:Z

    .line 41
    iput-object p1, p0, Lcom/startapp/android/publish/common/metaData/c;->a:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/startapp/android/publish/common/metaData/c;->b:Lcom/startapp/android/publish/common/model/AdPreferences;

    .line 43
    iput-object p3, p0, Lcom/startapp/android/publish/common/metaData/c;->c:Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 169
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/c;->a:Landroid/content/Context;

    new-instance v1, Lcom/startapp/android/publish/adsCommon/f/e;

    sget-object v2, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-direct {v1, v2, p1, p2}, Lcom/startapp/android/publish/adsCommon/f/e;-><init>(Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    invoke-static {v0, v1, p1}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/e;Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .registers 4

    .line 107
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 108
    :try_start_5
    iget-boolean v1, p0, Lcom/startapp/android/publish/common/metaData/c;->j:Z

    if-nez v1, :cond_a2

    iget-object v1, p0, Lcom/startapp/android/publish/common/metaData/c;->d:Lcom/startapp/android/publish/common/metaData/MetaData;

    if-eqz v1, :cond_a2

    iget-object v1, p0, Lcom/startapp/android/publish/common/metaData/c;->a:Landroid/content/Context;

    if-eqz v1, :cond_a2

    .line 109
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a()Z

    move-result v1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_a4

    if-nez v1, :cond_97

    .line 111
    :try_start_17
    iget-object v1, p0, Lcom/startapp/android/publish/common/metaData/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/startapp/android/publish/common/metaData/c;->i:Lcom/startapp/android/publish/adsCommon/b;

    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/b;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/b;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_1f
    .catchall {:try_start_17 .. :try_end_1e} :catchall_a4

    goto :goto_29

    :catch_1f
    move-exception v1

    :try_start_20
    const-string v2, "GetMetaDataAsyncTask-adscommon update fail"

    .line 113
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/startapp/android/publish/common/metaData/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    const-wide/16 v1, 0x10

    .line 115
    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v1

    if-nez v1, :cond_39

    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v1
    :try_end_37
    .catchall {:try_start_20 .. :try_end_37} :catchall_a4

    if-eqz v1, :cond_4b

    .line 117
    :cond_39
    :try_start_39
    iget-object v1, p0, Lcom/startapp/android/publish/common/metaData/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/startapp/android/publish/common/metaData/c;->e:Lcom/startapp/android/publish/ads/banner/c;

    invoke-static {v1, v2}, Lcom/startapp/android/publish/ads/banner/c;->a(Landroid/content/Context;Lcom/startapp/android/publish/ads/banner/c;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_40} :catch_41
    .catchall {:try_start_39 .. :try_end_40} :catchall_a4

    goto :goto_4b

    :catch_41
    move-exception v1

    :try_start_42
    const-string v2, "GetMetaDataAsyncTask-banner update fail"

    .line 119
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/startapp/android/publish/common/metaData/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    :goto_4b
    const-wide/16 v1, 0x8

    .line 122
    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v1
    :try_end_51
    .catchall {:try_start_42 .. :try_end_51} :catchall_a4

    if-eqz v1, :cond_65

    .line 124
    :try_start_53
    iget-object v1, p0, Lcom/startapp/android/publish/common/metaData/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/startapp/android/publish/common/metaData/c;->f:Lcom/startapp/android/publish/ads/splash/f;

    invoke-static {v1, v2}, Lcom/startapp/android/publish/ads/splash/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/f;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5a} :catch_5b
    .catchall {:try_start_53 .. :try_end_5a} :catchall_a4

    goto :goto_65

    :catch_5b
    move-exception v1

    :try_start_5c
    const-string v2, "GetMetaDataAsyncTask-splash update fail"

    .line 126
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/startapp/android/publish/common/metaData/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    :goto_65
    const-wide/16 v1, 0x200

    .line 129
    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v1
    :try_end_6b
    .catchall {:try_start_5c .. :try_end_6b} :catchall_a4

    if-eqz v1, :cond_7f

    .line 131
    :try_start_6d
    iget-object v1, p0, Lcom/startapp/android/publish/common/metaData/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/startapp/android/publish/common/metaData/c;->g:Lcom/startapp/android/publish/cache/d;

    invoke-static {v1, v2}, Lcom/startapp/android/publish/cache/d;->a(Landroid/content/Context;Lcom/startapp/android/publish/cache/d;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_74} :catch_75
    .catchall {:try_start_6d .. :try_end_74} :catchall_a4

    goto :goto_7f

    :catch_75
    move-exception v1

    :try_start_76
    const-string v2, "GetMetaDataAsyncTask-cache update fail"

    .line 133
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/startapp/android/publish/common/metaData/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_7f
    :goto_7f
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/Utils/i;->e()Z

    move-result v1
    :try_end_83
    .catchall {:try_start_76 .. :try_end_83} :catchall_a4

    if-eqz v1, :cond_97

    .line 138
    :try_start_85
    iget-object v1, p0, Lcom/startapp/android/publish/common/metaData/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/startapp/android/publish/common/metaData/c;->h:Lcom/startapp/android/publish/adsCommon/adinformation/a;

    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/adinformation/a;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/adinformation/a;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8c} :catch_8d
    .catchall {:try_start_85 .. :try_end_8c} :catchall_a4

    goto :goto_97

    :catch_8d
    move-exception v1

    :try_start_8e
    const-string v2, "GetMetaDataAsyncTask-adInfo update fail"

    .line 140
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/startapp/android/publish/common/metaData/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_8e .. :try_end_97} :catchall_a4

    .line 145
    :cond_97
    :goto_97
    :try_start_97
    iget-object v1, p0, Lcom/startapp/android/publish/common/metaData/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/startapp/android/publish/common/metaData/c;->d:Lcom/startapp/android/publish/common/metaData/MetaData;

    invoke-virtual {v2}, Lcom/startapp/android/publish/common/metaData/MetaData;->getAssetsBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/startapp/android/publish/common/metaData/MetaData;->preCacheResources(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a2} :catch_a2
    .catchall {:try_start_97 .. :try_end_a2} :catchall_a4

    .line 149
    :catch_a2
    :cond_a2
    :try_start_a2
    monitor-exit v0

    return-void

    :catchall_a4
    move-exception v1

    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_a2 .. :try_end_a6} :catchall_a4

    throw v1
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 47
    sget-object v0, Lcom/startapp/common/g$a;->b:Lcom/startapp/common/g$a;

    new-instance v1, Lcom/startapp/android/publish/common/metaData/c$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/common/metaData/c$1;-><init>(Lcom/startapp/android/publish/common/metaData/c;)V

    invoke-static {v0, v1}, Lcom/startapp/common/g;->a(Lcom/startapp/common/g$a;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .registers 4

    .line 153
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 154
    :try_start_5
    iget-boolean v1, p0, Lcom/startapp/android/publish/common/metaData/c;->j:Z

    if-nez v1, :cond_2d

    .line 155
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/startapp/android/publish/common/metaData/c;->d:Lcom/startapp/android/publish/common/metaData/MetaData;

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/startapp/android/publish/common/metaData/c;->a:Landroid/content/Context;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_2f

    if-eqz p1, :cond_2a

    .line 157
    :try_start_17
    iget-object p1, p0, Lcom/startapp/android/publish/common/metaData/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/startapp/android/publish/common/metaData/c;->d:Lcom/startapp/android/publish/common/metaData/MetaData;

    invoke-static {p1, v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->update(Landroid/content/Context;Lcom/startapp/android/publish/common/metaData/MetaData;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_1f
    .catchall {:try_start_17 .. :try_end_1e} :catchall_2f

    goto :goto_2d

    :catch_1f
    move-exception p1

    :try_start_20
    const-string v1, "GetMetaDataAsyncTask.onPostExecute-metadata update fail"

    .line 159
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/startapp/android/publish/common/metaData/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 162
    :cond_2a
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->failedLoading()V

    .line 165
    :cond_2d
    :goto_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/c;->j:Z

    return-void
.end method

.method protected c()Ljava/lang/Boolean;
    .registers 6

    const/4 v0, 0x3

    const-string v1, "Loading MetaData"

    .line 66
    invoke-static {v0, v1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 67
    new-instance v1, Lcom/startapp/android/publish/common/metaData/MetaDataRequest;

    iget-object v2, p0, Lcom/startapp/android/publish/common/metaData/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/startapp/android/publish/common/metaData/c;->c:Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;

    invoke-direct {v1, v2, v3}, Lcom/startapp/android/publish/common/metaData/MetaDataRequest;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;)V

    .line 70
    :try_start_f
    iget-object v2, p0, Lcom/startapp/android/publish/common/metaData/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/startapp/android/publish/common/metaData/c;->b:Lcom/startapp/android/publish/common/model/AdPreferences;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/startapp/android/publish/common/metaData/MetaDataRequest;->fillApplicationDetails(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Z)V

    .line 71
    iget-object v2, p0, Lcom/startapp/android/publish/common/metaData/c;->b:Lcom/startapp/android/publish/common/model/AdPreferences;

    iget-object v3, p0, Lcom/startapp/android/publish/common/metaData/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/startapp/android/publish/common/metaData/MetaDataRequest;->fillLocationDetails(Lcom/startapp/android/publish/common/model/AdPreferences;Landroid/content/Context;)V

    const-string v2, "Networking MetaData"

    .line 72
    invoke-static {v0, v2}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/c;->a:Landroid/content/Context;

    sget-object v2, Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;->METADATA:Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;

    invoke-static {v2}, Lcom/startapp/android/publish/adsCommon/AdsConstants;->a(Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/startapp/android/publish/adsCommon/k/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/BaseRequest;Ljava/util/Map;)Lcom/startapp/common/a/h$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/common/a/h$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 77
    const-class v1, Lcom/startapp/android/publish/common/metaData/MetaData;

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/common/metaData/MetaData;

    iput-object v1, p0, Lcom/startapp/android/publish/common/metaData/c;->d:Lcom/startapp/android/publish/common/metaData/MetaData;

    .line 78
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a()Z

    move-result v1

    if-nez v1, :cond_9c

    .line 79
    const-class v1, Lcom/startapp/android/publish/adsCommon/b;

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/adsCommon/b;

    iput-object v1, p0, Lcom/startapp/android/publish/common/metaData/c;->i:Lcom/startapp/android/publish/adsCommon/b;

    const-wide/16 v1, 0x10

    .line 80
    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v1

    if-nez v1, :cond_5e

    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 81
    :cond_5e
    const-class v1, Lcom/startapp/android/publish/ads/banner/c;

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/ads/banner/c;

    iput-object v1, p0, Lcom/startapp/android/publish/common/metaData/c;->e:Lcom/startapp/android/publish/ads/banner/c;

    :cond_68
    const-wide/16 v1, 0x8

    .line 83
    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 84
    const-class v1, Lcom/startapp/android/publish/ads/splash/f;

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/ads/splash/f;

    iput-object v1, p0, Lcom/startapp/android/publish/common/metaData/c;->f:Lcom/startapp/android/publish/ads/splash/f;

    :cond_7a
    const-wide/16 v1, 0x200

    .line 87
    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 88
    const-class v1, Lcom/startapp/android/publish/cache/d;

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/cache/d;

    iput-object v1, p0, Lcom/startapp/android/publish/common/metaData/c;->g:Lcom/startapp/android/publish/cache/d;

    .line 90
    :cond_8c
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/Utils/i;->e()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 91
    const-class v1, Lcom/startapp/android/publish/adsCommon/adinformation/a;

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/adsCommon/adinformation/a;

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/c;->h:Lcom/startapp/android/publish/adsCommon/adinformation/a;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_9c} :catch_a2

    .line 102
    :cond_9c
    invoke-direct {p0}, Lcom/startapp/android/publish/common/metaData/c;->d()V

    .line 103
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :catch_a2
    move-exception v0

    const/4 v1, 0x6

    const-string v2, "Unable to handle GetMetaData command!!!!"

    .line 96
    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_b9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "init.startappservice.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c8

    .line 98
    :cond_b9
    iget-object v1, p0, Lcom/startapp/android/publish/common/metaData/c;->a:Landroid/content/Context;

    sget-object v2, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GetMetaDataAsync.doInBackground - MetaData request failed"

    const-string v4, ""

    invoke-static {v1, v2, v3, v0, v4}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_c8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

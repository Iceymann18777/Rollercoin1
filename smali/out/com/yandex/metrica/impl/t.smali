.class public final Lcom/yandex/metrica/impl/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/t;->a:Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    return-void

    .line 68
    :catch_b
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/t;->a:Lorg/json/JSONObject;

    return-void
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 205
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 206
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    :cond_9
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/t;
    .registers 1

    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/t;->c()Lcom/yandex/metrica/impl/t;

    .line 78
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/t;->b()Lcom/yandex/metrica/impl/t;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_6

    :catch_6
    return-object p0
.end method

.method a(Landroid/content/Context;)Lcom/yandex/metrica/impl/t;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/yandex/metrica/impl/t;->a:Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "dfid"

    invoke-static {v0, v2, v1}, Lcom/yandex/metrica/impl/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 138
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "apps"

    invoke-static {v0, v2, v1}, Lcom/yandex/metrica/impl/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 139
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "names"

    invoke-static {v0, v2, v1}, Lcom/yandex/metrica/impl/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 140
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "system_flags"

    invoke-static {v0, v3, v2}, Lcom/yandex/metrica/impl/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 141
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const-string v4, "disabled_flags"

    invoke-static {v0, v4, v3}, Lcom/yandex/metrica/impl/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 142
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const-string v5, "first_install_time"

    invoke-static {v0, v5, v4}, Lcom/yandex/metrica/impl/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    .line 144
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const-string v6, "last_update_time"

    invoke-static {v0, v6, v5}, Lcom/yandex/metrica/impl/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONArray;

    const-string v6, "version"

    const/4 v7, 0x0

    .line 147
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1282
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p1

    .line 149
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 150
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 151
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v8, 0x1

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_8a

    const/4 v6, 0x1

    goto :goto_8b

    :cond_8a
    const/4 v6, 0x0

    :goto_8b
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 152
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    xor-int/2addr v6, v8

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 2160
    iget-wide v8, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 2164
    iget-wide v8, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    div-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    goto :goto_6f

    :cond_a5
    return-object p0
.end method

.method a(Landroid/content/Context;Z)Lcom/yandex/metrica/impl/t;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/yandex/metrica/impl/t;->a:Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "dfid"

    invoke-static {v0, v2, v1}, Lcom/yandex/metrica/impl/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 96
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "au"

    invoke-static {v0, v2, v1}, Lcom/yandex/metrica/impl/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 97
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "aun"

    invoke-static {v0, v2, v1}, Lcom/yandex/metrica/impl/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 98
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "ausf"

    invoke-static {v0, v3, v2}, Lcom/yandex/metrica/impl/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 99
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const-string v4, "audf"

    invoke-static {v0, v4, v3}, Lcom/yandex/metrica/impl/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 100
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const-string v5, "aulu"

    invoke-static {v0, v5, v4}, Lcom/yandex/metrica/impl/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    .line 101
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    if-eqz p2, :cond_5c

    const-string v6, "aufi"

    .line 103
    invoke-static {v0, v6, v5}, Lcom/yandex/metrica/impl/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_5c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 108
    new-instance v6, Ljava/lang/String;

    const-string v7, "YW5kcm9pZC5pbnRlbnQuYWN0aW9uLk1BSU4="

    const/4 v8, 0x0

    .line 109
    invoke-static {v7, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    const-string v9, "UTF-8"

    invoke-direct {v6, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v7, Ljava/lang/String;

    const-string v10, "YW5kcm9pZC5pbnRlbnQuY2F0ZWdvcnkuTEFVTkNIRVI="

    .line 110
    invoke-static {v10, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    invoke-direct {v7, v10, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 108
    invoke-static {p1, v6, v7}, Lcom/yandex/metrica/impl/bk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_82
    :goto_82
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 111
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 112
    iget-object v9, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_82

    .line 113
    iget-object v9, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 114
    iget v9, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v10, 0x1

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_a7

    const/4 v9, 0x1

    goto :goto_a8

    :cond_a7
    const/4 v9, 0x0

    .line 115
    :goto_a8
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 116
    new-instance v11, Ljava/io/File;

    iget-object v12, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 117
    iget-boolean v11, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    xor-int/2addr v10, v11

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    if-eqz p2, :cond_82

    if-eqz v9, :cond_c7

    .line 120
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_82

    .line 122
    :cond_c7
    iget-object v9, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v9}, Lcom/yandex/metrica/impl/bk;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-nez v9, :cond_d3

    .line 124
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_82

    .line 126
    :cond_d3
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v7}, Lcom/yandex/metrica/impl/bk;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-wide v9, v7, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    goto :goto_82

    :cond_e2
    return-object p0
.end method

.method b()Lcom/yandex/metrica/impl/t;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/yandex/metrica/impl/t;->a:Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "dfid"

    invoke-static {v0, v2, v1}, Lcom/yandex/metrica/impl/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1022
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    .line 89
    div-long/2addr v1, v3

    const-string v3, "boot_time"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object p0
.end method

.method c()Lcom/yandex/metrica/impl/t;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/yandex/metrica/impl/t;->a:Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "dfid"

    invoke-static {v0, v2, v1}, Lcom/yandex/metrica/impl/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const/4 v1, 0x1

    .line 169
    invoke-static {v1}, Lcom/yandex/metrica/impl/am;->a(Z)J

    move-result-wide v2

    const/4 v4, 0x0

    .line 170
    invoke-static {v4}, Lcom/yandex/metrica/impl/am;->a(Z)J

    move-result-wide v5

    .line 172
    invoke-static {v1}, Lcom/yandex/metrica/impl/am;->c(Z)J

    move-result-wide v7

    .line 173
    invoke-static {v4}, Lcom/yandex/metrica/impl/am;->c(Z)J

    move-result-wide v9

    add-long/2addr v2, v5

    const-string v1, "tds"

    .line 175
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    add-long/2addr v7, v9

    const-string v1, "fds"

    .line 176
    invoke-virtual {v0, v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 3

    .line 223
    new-instance v0, Lcom/yandex/metrica/impl/utils/b;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/utils/b;-><init>()V

    iget-object v1, p0, Lcom/yandex/metrica/impl/t;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/utils/b;->a([B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/yandex/metrica/impl/t;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

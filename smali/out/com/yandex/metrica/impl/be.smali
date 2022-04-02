.class public final Lcom/yandex/metrica/impl/be;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/be$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/pm/PackageItemInfo;)I
    .registers 2

    .line 219
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_d

    .line 221
    :try_start_4
    iget-object p0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "metrica:api:level"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    :cond_d
    const/4 p0, -0x1

    :goto_e
    return p0
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)J
    .registers 10

    const/16 v0, 0x8

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    .line 151
    :try_start_5
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->b(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 152
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 153
    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_18

    goto :goto_19

    :catch_18
    :cond_18
    move-wide v4, v2

    .line 162
    :goto_19
    :try_start_19
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 163
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 164
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 168
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2e} :catch_2e

    .line 174
    :catch_2e
    :cond_2e
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "metrica://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yandex/metrica/IMetricaService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 p0, 0xb

    .line 1242
    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->b(I)Z

    move-result p0

    if-eqz p0, :cond_2e

    const/16 p0, 0x20

    .line 1243
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2e
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    .line 96
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_d

    return-object p0

    .line 97
    :cond_d
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-eqz p2, :cond_b

    .line 214
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/be$a;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-static {p0}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 113
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 2135
    iget-boolean v4, v3, Landroid/content/pm/ServiceInfo;->enabled:Z

    xor-int/lit8 v4, v4, 0x1

    .line 2136
    iget-boolean v5, v3, Landroid/content/pm/ServiceInfo;->exported:Z

    xor-int/lit8 v5, v5, 0x1

    or-int/2addr v4, v5

    .line 2137
    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-static {v5}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    or-int/2addr v4, v5

    if-nez v4, :cond_15

    .line 120
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 121
    invoke-static {v0, v4}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)J

    move-result-wide v9

    .line 123
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v5, "android.permission.INTERNET"

    .line 2190
    invoke-static {v0, v4, v5}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 124
    invoke-static {v3}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/pm/PackageItemInfo;)I

    move-result v8

    shl-int/lit8 v4, v8, 0x5

    .line 3180
    iget-object v5, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    .line 3194
    invoke-static {v0, v5, v6}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    mul-int/lit8 v5, v5, 0x10

    add-int/2addr v4, v5

    .line 3181
    iget-object v5, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    .line 3198
    invoke-static {v0, v5, v6}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    .line 3182
    iget-object v5, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v6, "android.permission.ACCESS_WIFI_STATE"

    .line 3210
    invoke-static {v0, v5, v6}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    .line 3183
    iget-object v5, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    .line 4202
    invoke-static {v0, v5, v6}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 3184
    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v5, "android.permission.READ_PHONE_STATE"

    .line 4206
    invoke-static {v0, v3, v5}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int v7, v4, v3

    .line 127
    new-instance v3, Lcom/yandex/metrica/impl/be$a;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/yandex/metrica/impl/be$a;-><init>(Landroid/content/pm/ServiceInfo;IIJ)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 130
    :cond_91
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method

.method public static c(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    .line 231
    invoke-static {p0}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0}, Lcom/yandex/metrica/impl/be;->e(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 3

    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 251
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x80

    .line 252
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_17

    .line 253
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_18

    :cond_17
    return-object p0

    .line 258
    :catch_18
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

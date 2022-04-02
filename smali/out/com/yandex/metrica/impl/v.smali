.class public Lcom/yandex/metrica/impl/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/v$b;,
        Lcom/yandex/metrica/impl/v$c;,
        Lcom/yandex/metrica/impl/v$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)V
    .registers 7

    const-string v0, "metrica:api:level"

    const-string v1, "com.yandex.metrica.CounterConfiguration"

    .line 1055
    invoke-static {v1}, Lcom/yandex/metrica/impl/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 2047
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    if-eqz v1, :cond_ae

    .line 2094
    :try_start_1b
    new-instance v1, Landroid/content/ComponentName;

    const-class v4, Lcom/yandex/metrica/MetricaService;

    invoke-direct {v1, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2095
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x280

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_45

    .line 2099
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 2100
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/yandex/metrica/YandexMetrica;->getLibraryApiLevel()I

    move-result v1
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3e} :catch_44

    if-ne v0, v1, :cond_41

    goto :goto_42

    :cond_41
    const/4 v2, 0x0

    :goto_42
    move v3, v2

    goto :goto_45

    :catch_44
    nop

    :cond_45
    :goto_45
    if-eqz v3, :cond_a2

    const-string v0, "com.yandex.metrica.intent.action.SYNC"

    .line 2125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/yandex/metrica/MetricaEventHandler;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " receiver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2126
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2127
    new-instance v3, Landroid/content/Intent;

    const/4 v4, 0x0

    const-string v5, "package://fake.data"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2129
    invoke-static {p0, v2}, Lcom/yandex/metrica/impl/v;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_9c

    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 2132
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/yandex/metrica/impl/v;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_96

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 2135
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/yandex/metrica/impl/v;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_90

    goto :goto_ae

    .line 2136
    :cond_90
    new-instance p0, Lcom/yandex/metrica/impl/v$b;

    invoke-direct {p0, v1, v0}, Lcom/yandex/metrica/impl/v$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 2133
    :cond_96
    new-instance p0, Lcom/yandex/metrica/impl/v$b;

    invoke-direct {p0, v1, v0}, Lcom/yandex/metrica/impl/v$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 2130
    :cond_9c
    new-instance p0, Lcom/yandex/metrica/impl/v$b;

    invoke-direct {p0, v1, v0}, Lcom/yandex/metrica/impl/v$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 2107
    :cond_a2
    new-instance p0, Lcom/yandex/metrica/impl/v$c;

    const-class v0, Lcom/yandex/metrica/MetricaService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/v$c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ae
    :goto_ae
    return-void

    .line 1056
    :cond_af
    new-instance p0, Lcom/yandex/metrica/impl/v$a;

    const-string v0, "\nClass com.yandex.metrica.CounterConfiguration isn\'t found.\nPerhaps this is due to obfuscation.\nIf you build your application with ProGuard,\nyou need to keep the Metrica for Apps.\nPlease try to use the following lines of code:\n##########################################\n-keep class com.yandex.metrica.** { *; }\n-dontwarn com.yandex.metrica.**\n##########################################"

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/v$a;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 7

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 114
    const-class v0, Lcom/yandex/metrica/MetricaEventHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 116
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 117
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_39
    return v1
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 1

    .line 77
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    goto :goto_6

    :catch_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

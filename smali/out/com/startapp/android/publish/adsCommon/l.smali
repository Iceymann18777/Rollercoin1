.class public Lcom/startapp/android/publish/adsCommon/l;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/adsCommon/l$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static c:J = 0x0L

.field private static d:Landroid/util/Pair; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Lcom/startapp/android/publish/adsCommon/l$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Landroid/util/Pair; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Lcom/startapp/android/publish/adsCommon/l$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Z = true

.field private static g:Z = false

.field private static h:Lcom/startapp/android/publish/adsCommon/l$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    sget-object v0, Lcom/startapp/android/publish/adsCommon/l$a;->c:Lcom/startapp/android/publish/adsCommon/l$a;

    sput-object v0, Lcom/startapp/android/publish/adsCommon/l;->h:Lcom/startapp/android/publish/adsCommon/l$a;

    return-void
.end method

.method public static a()J
    .registers 2

    .line 70
    sget-wide v0, Lcom/startapp/android/publish/adsCommon/l;->c:J

    return-wide v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;ZZZ)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/startapp/android/publish/adsCommon/l;

    monitor-enter v0

    :try_start_3
    const-string v1, "SimpleToken"

    const/4 v2, 0x3

    const-string v3, "getSimpleToken entered"

    .line 169
    invoke-static {v1, v2, v3}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/startapp/android/publish/adsCommon/l$a;->a:Lcom/startapp/android/publish/adsCommon/l$a;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_7c

    if-eqz p1, :cond_6b

    .line 175
    :try_start_16
    sget-object p1, Lcom/startapp/android/publish/adsCommon/l;->h:Lcom/startapp/android/publish/adsCommon/l$a;

    sget-object v2, Lcom/startapp/android/publish/adsCommon/l$a;->c:Lcom/startapp/android/publish/adsCommon/l$a;

    if-ne p1, v2, :cond_51

    .line 176
    sget-boolean p1, Lcom/startapp/android/publish/adsCommon/l;->f:Z

    .line 177
    sget-boolean v2, Lcom/startapp/android/publish/adsCommon/l;->g:Z

    if-eqz v2, :cond_2c

    sget-boolean v2, Lcom/startapp/android/publish/adsCommon/l;->f:Z

    if-eqz v2, :cond_27

    goto :goto_2c

    .line 179
    :cond_27
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/l;->f(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v2

    goto :goto_30

    .line 178
    :cond_2c
    :goto_2c
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/l;->e(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v2

    :goto_30
    if-eqz p3, :cond_33

    goto :goto_3a

    .line 181
    :cond_33
    sget-boolean p1, Lcom/startapp/android/publish/adsCommon/l;->g:Z

    if-nez p1, :cond_39

    const/4 p1, 0x1

    goto :goto_3a

    :cond_39
    const/4 p1, 0x0

    :goto_3a
    sput-boolean p1, Lcom/startapp/android/publish/adsCommon/l;->g:Z

    if-eqz p2, :cond_3f

    goto :goto_4f

    :cond_3f
    const-string p1, "shared_prefs_simple_token"

    const-string p2, ""

    .line 186
    invoke-static {p0, p1, p2}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 187
    iget-object p1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6b

    :goto_4f
    move-object v1, v2

    goto :goto_6b

    .line 192
    :cond_51
    sget-object p1, Lcom/startapp/android/publish/adsCommon/l;->h:Lcom/startapp/android/publish/adsCommon/l$a;

    sget-object p2, Lcom/startapp/android/publish/adsCommon/l$a;->a:Lcom/startapp/android/publish/adsCommon/l$a;

    if-ne p1, p2, :cond_5c

    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/l;->e(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object p0

    goto :goto_60

    :cond_5c
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/l;->f(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object p0
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_60} :catch_62
    .catchall {:try_start_16 .. :try_end_60} :catchall_7c

    :goto_60
    move-object v1, p0

    goto :goto_6b

    :catch_62
    move-exception p0

    :try_start_63
    const-string p1, "SimpleToken"

    const/4 p2, 0x6

    const-string p3, "failed to get simpleToken "

    .line 196
    invoke-static {p1, p2, p3, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    :cond_6b
    :goto_6b
    new-instance p0, Landroid/util/Pair;

    iget-object p1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/startapp/android/publish/adsCommon/l$a;

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/l$a;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7a
    .catchall {:try_start_63 .. :try_end_7a} :catchall_7c

    monitor-exit v0

    return-object p0

    :catchall_7c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SimpleToken"

    const/4 v1, 0x3

    const-string v2, "getPackagesNames entered"

    .line 310
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 315
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_23
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .line 75
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/l;->c(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 79
    sput-boolean v0, Lcom/startapp/android/publish/adsCommon/l;->f:Z

    const/4 v0, 0x0

    .line 80
    sput-boolean v0, Lcom/startapp/android/publish/adsCommon/l;->g:Z

    .line 81
    sget-object v0, Lcom/startapp/android/publish/adsCommon/l$a;->c:Lcom/startapp/android/publish/adsCommon/l$a;

    sput-object v0, Lcom/startapp/android/publish/adsCommon/l;->h:Lcom/startapp/android/publish/adsCommon/l$a;

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/startapp/android/publish/adsCommon/l$1;

    invoke-direct {v2}, Lcom/startapp/android/publish/adsCommon/l$1;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/adsCommon/l$2;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/adsCommon/l$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->addMetaDataListener(Lcom/startapp/android/publish/common/metaData/d;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 7

    const-string v0, "]"

    const-string v1, "SimpleToken"

    const/4 v2, 0x3

    const-string v3, "initSimpleToken entered"

    .line 132
    invoke-static {v1, v2, v3}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 133
    sget-object v3, Lcom/startapp/android/publish/adsCommon/l;->d:Landroid/util/Pair;

    if-eqz v3, :cond_12

    sget-object v3, Lcom/startapp/android/publish/adsCommon/l;->e:Landroid/util/Pair;

    if-nez v3, :cond_84

    :cond_12
    if-eqz p1, :cond_84

    .line 135
    :try_start_14
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/l;->g(Landroid/content/Context;)V

    .line 137
    new-instance p1, Landroid/util/Pair;

    sget-object v3, Lcom/startapp/android/publish/adsCommon/l$a;->a:Lcom/startapp/android/publish/adsCommon/l$a;

    sget-object v4, Lcom/startapp/android/publish/adsCommon/l;->a:Ljava/util/List;

    invoke-static {v4}, Lcom/startapp/android/publish/adsCommon/l;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/startapp/common/f;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object p1, Lcom/startapp/android/publish/adsCommon/l;->d:Landroid/util/Pair;

    .line 138
    new-instance p1, Landroid/util/Pair;

    sget-object v3, Lcom/startapp/android/publish/adsCommon/l$a;->b:Lcom/startapp/android/publish/adsCommon/l$a;

    sget-object v4, Lcom/startapp/android/publish/adsCommon/l;->b:Ljava/util/List;

    invoke-static {v4}, Lcom/startapp/android/publish/adsCommon/l;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/startapp/common/f;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object p1, Lcom/startapp/android/publish/adsCommon/l;->e:Landroid/util/Pair;

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simpleToken : ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/startapp/android/publish/adsCommon/l;->d:Landroid/util/Pair;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simpleToken2 : ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/startapp/android/publish/adsCommon/l;->e:Landroid/util/Pair;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_6f} :catch_70

    goto :goto_84

    :catch_70
    move-exception p1

    const/4 v0, 0x6

    const-string v2, "initSimpleToken failed"

    .line 143
    invoke-static {v1, v0, v2, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    sget-object v0, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "initSimpleToken"

    const-string v2, ""

    invoke-static {p0, v0, v1, p1, v2}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    :goto_84
    return-void
.end method

.method private static a(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 300
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_30

    .line 301
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 302
    sget-object p1, Lcom/startapp/android/publish/adsCommon/l;->b:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_30

    :catch_14
    move-exception p0

    const/4 p1, 0x6

    .line 305
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addToPackagesFromInstallers - can\'t add app to list "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "SimpleToken"

    invoke-static {p2, p1, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_30
    :goto_30
    return-void
.end method

.method public static a(Landroid/util/Pair;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SimpleToken"

    const/4 v1, 0x3

    const-string v2, "errorSendingToken entered"

    .line 203
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 204
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/l$a;->valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/l$a;

    move-result-object p0

    sput-object p0, Lcom/startapp/android/publish/adsCommon/l;->h:Lcom/startapp/android/publish/adsCommon/l$a;

    return-void
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 322
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_9

    return-object p0

    .line 326
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 327
    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/l;->c(Ljava/util/List;)V

    const/4 p0, 0x0

    .line 329
    invoke-interface {v0, p0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b()V
    .registers 1

    const/4 v0, 0x0

    .line 150
    sput-object v0, Lcom/startapp/android/publish/adsCommon/l;->d:Landroid/util/Pair;

    .line 151
    sput-object v0, Lcom/startapp/android/publish/adsCommon/l;->e:Landroid/util/Pair;

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 2

    .line 109
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->getSimpleTokenConfig()Lcom/startapp/android/publish/common/metaData/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/startapp/android/publish/common/metaData/h;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/startapp/android/publish/adsCommon/l;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public static c()Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 208
    sget-object v0, Lcom/startapp/android/publish/adsCommon/l;->d:Landroid/util/Pair;

    if-eqz v0, :cond_18

    .line 209
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Lcom/startapp/android/publish/adsCommon/l;->d:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/startapp/android/publish/adsCommon/l$a;

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/l$a;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/adsCommon/l;->d:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 212
    :cond_18
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Lcom/startapp/android/publish/adsCommon/l$a;->a:Lcom/startapp/android/publish/adsCommon/l$a;

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/l$a;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .registers 5

    const-string v0, "SimpleToken"

    const/4 v1, 0x3

    const-string v2, "initSimpleTokenAsync entered"

    .line 113
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 116
    :try_start_8
    sget-object v1, Lcom/startapp/android/publish/adsCommon/l;->d:Landroid/util/Pair;

    if-eqz v1, :cond_10

    sget-object v1, Lcom/startapp/android/publish/adsCommon/l;->e:Landroid/util/Pair;

    if-nez v1, :cond_3d

    :cond_10
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->getSimpleTokenConfig()Lcom/startapp/android/publish/common/metaData/h;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/startapp/android/publish/common/metaData/h;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 117
    sget-object v1, Lcom/startapp/common/g$a;->b:Lcom/startapp/common/g$a;

    new-instance v2, Lcom/startapp/android/publish/adsCommon/l$3;

    invoke-direct {v2, p0}, Lcom/startapp/android/publish/adsCommon/l$3;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/startapp/common/g;->a(Lcom/startapp/common/g$a;Ljava/lang/Runnable;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_28} :catch_29

    goto :goto_3d

    :catch_29
    move-exception v1

    const/4 v2, 0x6

    const-string v3, "initSimpleTokenAsync failed"

    .line 125
    invoke-static {v0, v2, v3, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    sget-object v0, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "initSimpleTokenAsync"

    const-string v3, ""

    invoke-static {p0, v0, v2, v1, v3}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method private static c(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 333
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_e

    .line 334
    new-instance v0, Lcom/startapp/android/publish/adsCommon/l$4;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/l$4;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_e
    return-void
.end method

.method public static d()Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 216
    sget-object v0, Lcom/startapp/android/publish/adsCommon/l;->e:Landroid/util/Pair;

    if-eqz v0, :cond_18

    .line 217
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Lcom/startapp/android/publish/adsCommon/l;->e:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/startapp/android/publish/adsCommon/l$a;

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/l$a;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/adsCommon/l;->e:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 220
    :cond_18
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Lcom/startapp/android/publish/adsCommon/l$a;->b:Lcom/startapp/android/publish/adsCommon/l$a;

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/l$a;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->getSimpleTokenConfig()Lcom/startapp/android/publish/common/metaData/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/startapp/android/publish/common/metaData/h;->b(Landroid/content/Context;)Z

    move-result v0

    .line 158
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->isAlwaysSendToken()Z

    move-result v1

    .line 159
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/common/metaData/MetaData;->isToken1Mandatory()Z

    move-result v2

    .line 155
    invoke-static {p0, v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/l;->a(Landroid/content/Context;ZZZ)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/content/Context;)Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/startapp/android/publish/adsCommon/l$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 226
    sget-object v0, Lcom/startapp/android/publish/adsCommon/l;->d:Landroid/util/Pair;

    if-nez v0, :cond_7

    .line 227
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/l;->b(Landroid/content/Context;)V

    .line 230
    :cond_7
    sget-object v0, Lcom/startapp/android/publish/adsCommon/l;->d:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "shared_prefs_simple_token"

    invoke-static {p0, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 231
    sput-boolean p0, Lcom/startapp/android/publish/adsCommon/l;->f:Z

    .line 232
    sget-object p0, Lcom/startapp/android/publish/adsCommon/l$a;->c:Lcom/startapp/android/publish/adsCommon/l$a;

    sput-object p0, Lcom/startapp/android/publish/adsCommon/l;->h:Lcom/startapp/android/publish/adsCommon/l$a;

    .line 233
    new-instance p0, Landroid/util/Pair;

    sget-object v0, Lcom/startapp/android/publish/adsCommon/l$a;->a:Lcom/startapp/android/publish/adsCommon/l$a;

    sget-object v1, Lcom/startapp/android/publish/adsCommon/l;->d:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static f(Landroid/content/Context;)Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/startapp/android/publish/adsCommon/l$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/startapp/android/publish/adsCommon/l;->e:Landroid/util/Pair;

    if-nez v0, :cond_7

    .line 238
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/l;->b(Landroid/content/Context;)V

    .line 241
    :cond_7
    sget-object v0, Lcom/startapp/android/publish/adsCommon/l;->e:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "shared_prefs_simple_token2"

    invoke-static {p0, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 242
    sput-boolean p0, Lcom/startapp/android/publish/adsCommon/l;->f:Z

    .line 243
    sget-object p0, Lcom/startapp/android/publish/adsCommon/l$a;->c:Lcom/startapp/android/publish/adsCommon/l$a;

    sput-object p0, Lcom/startapp/android/publish/adsCommon/l;->h:Lcom/startapp/android/publish/adsCommon/l$a;

    .line 244
    new-instance p0, Landroid/util/Pair;

    sget-object v0, Lcom/startapp/android/publish/adsCommon/l$a;->b:Lcom/startapp/android/publish/adsCommon/l$a;

    sget-object v1, Lcom/startapp/android/publish/adsCommon/l;->e:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static declared-synchronized g(Landroid/content/Context;)V
    .registers 13

    const-class v0, Lcom/startapp/android/publish/adsCommon/l;

    monitor-enter v0

    :try_start_3
    const-string v1, "SimpleToken"

    const/4 v2, 0x3

    const-string v3, "getPackages entered"

    .line 248
    invoke-static {v1, v2, v3}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 251
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstallersList()Ljava/util/Set;

    move-result-object v1

    .line 252
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/common/metaData/MetaData;->getPreInstalledPackages()Ljava/util/Set;

    move-result-object v2

    .line 254
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v3, Lcom/startapp/android/publish/adsCommon/l;->a:Ljava/util/List;

    .line 255
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v3, Lcom/startapp/android/publish/adsCommon/l;->b:Ljava/util/List;
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_b0

    .line 261
    :try_start_2d
    invoke-static {p0}, Lcom/startapp/common/a/c;->a(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v3
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_a5
    .catchall {:try_start_2d .. :try_end_31} :catchall_b0

    .line 267
    :try_start_31
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_3d

    const-wide v6, 0x7fffffffffffffffL

    goto :goto_3f

    :cond_3d
    const-wide/16 v6, 0x0

    :goto_3f
    sput-wide v6, Lcom/startapp/android/publish/adsCommon/l;->c:J

    const/4 v4, 0x0

    .line 271
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_46
    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 272
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v5, :cond_62

    .line 273
    sget-wide v7, Lcom/startapp/android/publish/adsCommon/l;->c:J

    iget-wide v9, v6, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    cmp-long v11, v7, v9

    if-lez v11, :cond_62

    .line 274
    iget-wide v7, v6, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    sput-wide v7, Lcom/startapp/android/publish/adsCommon/l;->c:J

    .line 278
    :cond_62
    invoke-static {v6}, Lcom/startapp/common/a/c;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-nez v7, :cond_71

    .line 279
    sget-object v7, Lcom/startapp/android/publish/adsCommon/l;->a:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-static {v6, p0, v1}, Lcom/startapp/android/publish/adsCommon/l;->a(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;Ljava/util/Set;)V

    goto :goto_46

    .line 281
    :cond_71
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 282
    sget-object v7, Lcom/startapp/android/publish/adsCommon/l;->a:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 283
    :cond_7f
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v8, Lcom/startapp/common/Constants;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    move-object v4, v6

    goto :goto_46

    .line 289
    :cond_8b
    sget-object p0, Lcom/startapp/android/publish/adsCommon/l;->a:Ljava/util/List;

    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/l;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/startapp/android/publish/adsCommon/l;->a:Ljava/util/List;

    .line 290
    sget-object p0, Lcom/startapp/android/publish/adsCommon/l;->b:Ljava/util/List;

    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/l;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/startapp/android/publish/adsCommon/l;->b:Ljava/util/List;

    if-eqz v4, :cond_a3

    .line 294
    sget-object p0, Lcom/startapp/android/publish/adsCommon/l;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_a3
    .catchall {:try_start_31 .. :try_end_a3} :catchall_b0

    .line 296
    :cond_a3
    monitor-exit v0

    return-void

    :catch_a5
    move-exception p0

    :try_start_a6
    const-string v1, "SimpleToken"

    const/4 v2, 0x6

    const-string v3, "Could not complete getInstalledPackages"

    .line 263
    invoke-static {v1, v2, v3, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ae
    .catchall {:try_start_a6 .. :try_end_ae} :catchall_b0

    .line 264
    monitor-exit v0

    return-void

    :catchall_b0
    move-exception p0

    monitor-exit v0

    goto :goto_b4

    :goto_b3
    throw p0

    :goto_b4
    goto :goto_b3
.end method

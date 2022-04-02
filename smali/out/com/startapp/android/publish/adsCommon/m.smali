.class public Lcom/startapp/android/publish/adsCommon/m;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/adsCommon/m$a;
    }
.end annotation


# instance fields
.field private A:Landroid/content/ServiceConnection;

.field private a:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:J

.field private h:Landroid/app/Application;

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Object;

.field private k:Landroid/app/Activity;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/os/Bundle;

.field private t:Lcom/startapp/android/publish/cache/c;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Lcom/startapp/android/publish/adsCommon/g;

.field private z:Z


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x200

    .line 97
    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->b:Z

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->d:Z

    .line 100
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->e:Z

    .line 101
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->f:Z

    const/4 v1, 0x0

    .line 103
    iput-object v1, p0, Lcom/startapp/android/publish/adsCommon/m;->h:Landroid/app/Application;

    .line 104
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/startapp/android/publish/adsCommon/m;->i:Ljava/util/HashMap;

    .line 107
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->l:Z

    .line 109
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->n:Z

    const/4 v2, 0x1

    .line 110
    iput-boolean v2, p0, Lcom/startapp/android/publish/adsCommon/m;->o:Z

    .line 111
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->p:Z

    .line 112
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->q:Z

    .line 114
    iput-object v1, p0, Lcom/startapp/android/publish/adsCommon/m;->s:Landroid/os/Bundle;

    .line 116
    iput-object v1, p0, Lcom/startapp/android/publish/adsCommon/m;->t:Lcom/startapp/android/publish/cache/c;

    .line 120
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->v:Z

    .line 121
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->w:Z

    .line 122
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->x:Z

    .line 128
    iput-object v1, p0, Lcom/startapp/android/publish/adsCommon/m;->y:Lcom/startapp/android/publish/adsCommon/g;

    .line 131
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->z:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/startapp/android/publish/adsCommon/m$1;)V
    .registers 2

    .line 70
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/m;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/adsCommon/m;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/m;->A:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method public static a()Lcom/startapp/android/publish/adsCommon/m;
    .registers 1

    .line 91
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m$a;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Application;)Ljava/lang/Object;
    .registers 2

    .line 907
    new-instance v0, Lcom/startapp/android/publish/adsCommon/m$3;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/m$3;-><init>()V

    .line 953
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-object v0
.end method

.method public static a(Landroid/app/Application;Ljava/lang/Object;)V
    .registers 2

    .line 960
    check-cast p1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, p1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private a(Landroid/content/Context;J)V
    .registers 6

    .line 965
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/startapp/android/publish/adsCommon/m$4;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/publish/adsCommon/m$4;-><init>(Lcom/startapp/android/publish/adsCommon/m;Landroid/content/Context;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 4

    .line 818
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/m;->h()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->y()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 819
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/startapp/android/publish/cache/a;->a(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;)Lcom/startapp/android/publish/cache/c;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/m;->t:Lcom/startapp/android/publish/cache/c;

    :cond_1a
    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .registers 6

    const/4 p1, 0x0

    .line 337
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/m;->g(Z)V

    .line 338
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/m;->f(Z)V

    .line 341
    invoke-static {}, Lcom/startapp/common/a/c;->b()Z

    move-result p1

    const-string v0, "StartAppSDKInternal"

    if-eqz p1, :cond_39

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 343
    invoke-direct {p0, p2}, Lcom/startapp/android/publish/adsCommon/m;->g(Z)V

    const/4 p1, 0x1

    .line 344
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/m;->f(Z)V

    const/4 p1, 0x3

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Return Ads: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3f

    :cond_39
    const/4 p1, 0x6

    const-string p2, "Cannot activate return interstitials, cache to disk, ttl reload - api lower than 14"

    .line 347
    invoke-static {v0, p1, p2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_3f
    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/adsCommon/m;Landroid/content/Context;J)V
    .registers 4

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/android/publish/adsCommon/m;->a(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/adsCommon/m;Landroid/content/Context;Z)V
    .registers 3

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/adsCommon/m;->b(Landroid/content/Context;Z)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 5

    const/4 v0, 0x0

    .line 1065
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x40

    .line 1066
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 1069
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_14

    goto :goto_3d

    .line 1072
    :cond_14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 1073
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-nez v1, :cond_29

    goto :goto_18

    .line 1075
    :cond_29
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v1

    if-nez v1, :cond_36

    goto :goto_18

    .line 1076
    :cond_36
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_38} :catch_3e

    if-nez p1, :cond_3b

    goto :goto_18

    :cond_3b
    const/4 p0, 0x1

    return p0

    :cond_3d
    :goto_3d
    return v0

    :catch_3e
    const/4 p0, 0x6

    const-string p1, "StartAppSDKInternal"

    const-string v1, "Runtime exception while getting specialized handlers"

    .line 1080
    invoke-static {p1, p0, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_46
    return v0
.end method

.method static synthetic a(Lcom/startapp/android/publish/adsCommon/m;)Z
    .registers 1

    .line 70
    iget-boolean p0, p0, Lcom/startapp/android/publish/adsCommon/m;->z:Z

    return p0
.end method

.method static synthetic a(Lcom/startapp/android/publish/adsCommon/m;Z)Z
    .registers 2

    .line 70
    iput-boolean p1, p0, Lcom/startapp/android/publish/adsCommon/m;->z:Z

    return p1
.end method

.method static synthetic b(Lcom/startapp/android/publish/adsCommon/m;)Landroid/content/ServiceConnection;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/startapp/android/publish/adsCommon/m;->A:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v0, 0x0

    .line 805
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 806
    invoke-static {p1, p2}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eq v0, v6, :cond_25

    .line 808
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 809
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/startapp/android/publish/adsCommon/m;->a(Landroid/content/Context;Ljava/lang/String;JZZ)V

    :cond_25
    return-void
.end method

.method private b(Landroid/content/Context;Z)V
    .registers 4

    .line 1086
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "chromeTabs"

    invoke-static {p1, v0, p2}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    .line 880
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    const/4 p0, 0x1

    return p0

    :catch_6
    return v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 894
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".StartAppConstants"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "WRAPPER_VERSION"

    .line 895
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    .line 896
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    const-string p0, "0"

    return-object p0
.end method

.method private f(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x1

    .line 718
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->d:Z

    .line 720
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/m;->p(Landroid/content/Context;)V

    .line 724
    invoke-static {}, Lcom/startapp/common/c;->a()Lcom/startapp/common/c;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 725
    invoke-static {}, Lcom/startapp/common/c;->a()Lcom/startapp/common/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/common/c;->b(Landroid/content/Context;)V

    :cond_13
    return-void
.end method

.method private f(Z)V
    .registers 2

    .line 655
    iput-boolean p1, p0, Lcom/startapp/android/publish/adsCommon/m;->c:Z

    return-void
.end method

.method private g(Landroid/app/Activity;)V
    .registers 6

    .line 731
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->canShowAd()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/m;->h()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->y()Z

    move-result v0

    if-nez v0, :cond_90

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a()Z

    move-result v0

    if-nez v0, :cond_90

    .line 732
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/m;->c()Z

    move-result v0

    if-nez v0, :cond_90

    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/m;->q()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 733
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/m;->t:Lcom/startapp/android/publish/cache/c;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/cache/a;->a(Lcom/startapp/android/publish/cache/c;)Lcom/startapp/android/publish/adsCommon/g;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/m;->y:Lcom/startapp/android/publish/adsCommon/g;

    if-eqz v0, :cond_90

    .line 734
    invoke-interface {v0}, Lcom/startapp/android/publish/adsCommon/g;->isReady()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 735
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->F()Lcom/startapp/android/publish/adsCommon/a/e;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_RETURN:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/a/e;->a(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/a/f;

    move-result-object v0

    .line 736
    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/a/f;->a()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 737
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m;->y:Lcom/startapp/android/publish/adsCommon/g;

    invoke-interface {v0, v2}, Lcom/startapp/android/publish/adsCommon/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 740
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/a/b;->a()Lcom/startapp/android/publish/adsCommon/a/b;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/adsCommon/a/a;

    sget-object v3, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_RETURN:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-direct {v1, v3, v2}, Lcom/startapp/android/publish/adsCommon/a/a;-><init>(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adsCommon/a/b;->a(Lcom/startapp/android/publish/adsCommon/a/a;)V

    goto :goto_90

    .line 743
    :cond_6c
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/m;->y:Lcom/startapp/android/publish/adsCommon/g;

    check-cast v1, Lcom/startapp/android/publish/ads/b/e;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/b/e;->l()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/a/f;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-static {}, Lcom/startapp/common/Constants;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 745
    invoke-static {}, Lcom/startapp/common/a/i;->a()Lcom/startapp/common/a/i;

    move-result-object v1

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/a/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/startapp/common/a/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 753
    :cond_90
    :goto_90
    invoke-static {}, Lcom/startapp/common/c;->a()Lcom/startapp/common/c;

    move-result-object v0

    if-eqz v0, :cond_9d

    .line 754
    invoke-static {}, Lcom/startapp/common/c;->a()Lcom/startapp/common/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/common/c;->a(Landroid/content/Context;)V

    .line 758
    :cond_9d
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/m;->r()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 759
    sget-object v0, Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;->b:Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;

    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/m;->a(Landroid/content/Context;Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;)V

    :cond_a8
    return-void
.end method

.method private g(Z)V
    .registers 2

    .line 659
    iput-boolean p1, p0, Lcom/startapp/android/publish/adsCommon/m;->u:Z

    return-void
.end method

.method static synthetic i(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 70
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/m;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private j(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    .line 225
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "periodicInfoEventPaused"

    invoke-static {p1, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "periodicMetadataPaused"

    .line 226
    invoke-static {p1, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 228
    new-instance v0, Lcom/startapp/android/publish/adsCommon/m$1;

    invoke-direct {v0, p0, p1}, Lcom/startapp/android/publish/adsCommon/m$1;-><init>(Lcom/startapp/android/publish/adsCommon/m;Landroid/content/Context;)V

    .line 269
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/common/metaData/MetaData;->isReady()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 270
    invoke-interface {v0}, Lcom/startapp/android/publish/common/metaData/d;->a()V

    goto :goto_29

    .line 272
    :cond_22
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->addMetaDataListener(Lcom/startapp/android/publish/common/metaData/d;)V

    :goto_29
    return-void
.end method

.method private k(Landroid/content/Context;)V
    .registers 4

    .line 293
    invoke-static {p1}, Lcom/startapp/android/publish/common/metaData/MetaData;->init(Landroid/content/Context;)V

    .line 294
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 295
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/b;->a(Landroid/content/Context;)V

    const-wide/16 v0, 0x10

    .line 296
    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-nez v0, :cond_1c

    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 297
    :cond_1c
    invoke-static {p1}, Lcom/startapp/android/publish/ads/banner/c;->a(Landroid/content/Context;)V

    :cond_1f
    const-wide/16 v0, 0x8

    .line 299
    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 300
    invoke-static {p1}, Lcom/startapp/android/publish/ads/splash/f;->a(Landroid/content/Context;)V

    .line 302
    :cond_2a
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->b:Z

    if-eqz v0, :cond_31

    .line 303
    invoke-static {p1}, Lcom/startapp/android/publish/cache/d;->a(Landroid/content/Context;)V

    .line 305
    :cond_31
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/Utils/i;->e()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 306
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/adinformation/a;->a(Landroid/content/Context;)V

    :cond_3a
    return-void
.end method

.method private l(Landroid/content/Context;)V
    .registers 6

    const/4 v0, -0x1

    .line 312
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "shared_prefs_app_version_id"

    invoke-static {p1, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 313
    invoke-static {p1}, Lcom/startapp/common/a/c;->d(Landroid/content/Context;)I

    move-result v2

    .line 314
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v2, v0, :cond_1e

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->q:Z

    .line 317
    :cond_1e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private m(Landroid/content/Context;)V
    .registers 5

    .line 326
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->q:Z

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/startapp/android/publish/cache/d;->a()Lcom/startapp/android/publish/cache/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/cache/d;->b()Lcom/startapp/android/publish/cache/ACMConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/cache/ACMConfig;->isLocalCache()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1f

    .line 329
    :cond_13
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->c:Z

    if-eqz v0, :cond_2e

    .line 330
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/cache/a;->a(Landroid/content/Context;)V

    goto :goto_2e

    :cond_1f
    :goto_1f
    const/4 v0, 0x3

    const-string v1, "StartAppSDKInternal"

    const-string v2, "App version changed or disabled in meta - deleting existing cache"

    .line 327
    invoke-static {v1, v0, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/cache/a;->b(Landroid/content/Context;)V

    .line 332
    :cond_2e
    :goto_2e
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/m;->p(Landroid/content/Context;)V

    .line 333
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/cache/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method private n(Landroid/content/Context;)V
    .registers 5

    const-string v0, "StartAppSDKInternal"

    const/4 v1, 0x3

    const-string v2, "Sending Download Event"

    .line 352
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 353
    sget-object v0, Lcom/startapp/common/g$a;->a:Lcom/startapp/common/g$a;

    new-instance v1, Lcom/startapp/android/publish/adsCommon/m$2;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/publish/adsCommon/m$2;-><init>(Lcom/startapp/android/publish/adsCommon/m;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/startapp/common/g;->a(Lcom/startapp/common/g$a;Ljava/lang/Runnable;)V

    return-void
.end method

.method private o(Landroid/content/Context;)V
    .registers 4

    .line 685
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m;->r:Ljava/util/Map;

    const-string v1, "sharedPrefsWrappers"

    invoke-static {p1, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private p(Landroid/content/Context;)V
    .registers 3

    .line 814
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/m;->a(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;)V

    return-void
.end method

.method public static p()Z
    .registers 2

    .line 867
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    const-string v1, "Unity"

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adsCommon/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static q(Landroid/content/Context;)V
    .registers 5

    .line 831
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 832
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->u()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 834
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/Utils/i;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cordova"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    :cond_14
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->s()Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "com.startapp.android.mediation.admob"

    .line 839
    invoke-static {v1}, Lcom/startapp/android/publish/adsCommon/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdMob"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    :cond_25
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->t()Z

    move-result v1

    const-string v2, "MoPub"

    if-eqz v1, :cond_36

    const-string v1, "com.mopub.mobileads"

    .line 844
    invoke-static {v1}, Lcom/startapp/android/publish/adsCommon/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    :cond_36
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->v()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/m;->o()Ljava/util/Map;

    move-result-object v1

    const-string v3, "B4A"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    const-string v1, "0"

    .line 850
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    :cond_51
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "sharedPrefsWrappers"

    .line 853
    invoke-static {p0, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_5c
    return-void
.end method

.method private q()Z
    .registers 6

    .line 764
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/startapp/android/publish/adsCommon/m;->g:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/b;->x()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method private r(Landroid/content/Context;)V
    .registers 4

    .line 982
    sget-object v0, Lcom/startapp/common/g$a;->a:Lcom/startapp/common/g$a;

    new-instance v1, Lcom/startapp/android/publish/adsCommon/m$5;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/publish/adsCommon/m$5;-><init>(Lcom/startapp/android/publish/adsCommon/m;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/startapp/common/g;->a(Lcom/startapp/common/g$a;Ljava/lang/Runnable;)V

    return-void
.end method

.method private r()Z
    .registers 6

    .line 768
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/startapp/android/publish/adsCommon/m;->g:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/common/metaData/MetaData;->getSessionMaxBackgroundTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method private static s(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    .line 1022
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1024
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "http://www.example.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v3, 0x0

    .line 1025
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 1028
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1f

    :cond_1e
    move-object v4, v0

    .line 1032
    :goto_1f
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 1033
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2c
    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 1035
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v9, "android.support.customtabs.action.CustomTabsService"

    .line 1036
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1037
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1038
    invoke-virtual {v1, v8, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_2c

    .line 1039
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 1045
    :cond_57
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5b} :catch_8b

    const-string v5, "com.android.chrome"

    if-eqz v1, :cond_60

    goto :goto_93

    .line 1047
    :cond_60
    :try_start_60
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_6f

    .line 1048
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_93

    .line 1049
    :cond_6f
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_83

    .line 1050
    invoke-static {p0, v2}, Lcom/startapp/android/publish/adsCommon/m;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_83

    .line 1051
    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_83

    move-object v0, v4

    goto :goto_93

    .line 1053
    :cond_83
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_87} :catch_8b

    if-eqz p0, :cond_93

    move-object v0, v5

    goto :goto_93

    :catch_8b
    const/4 p0, 0x6

    const-string v1, "StartAppSDKInternal"

    const-string v2, "Exception inside getPackageNameToUse"

    .line 1057
    invoke-static {v1, p0, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_93
    :goto_93
    return-object v0
.end method

.method private static s()Z
    .registers 1

    const-string v0, "com.startapp.android.mediation.admob.StartAppCustomEvent"

    .line 859
    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/m;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static t()Z
    .registers 1

    const-string v0, "com.mopub.mobileads.StartAppCustomEventInterstitial"

    .line 863
    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/m;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static u()Z
    .registers 1

    const-string v0, "org.apache.cordova.CordovaPlugin"

    .line 871
    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/m;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static v()Z
    .registers 1

    const-string v0, "anywheresoftware.b4a.BA"

    .line 875
    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/m;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 691
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m;->r:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 694
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public a(Landroid/app/Activity;)V
    .registers 12

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityStarted ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StartAppSDKInternal"

    const/4 v3, 0x3

    invoke-static {v2, v3, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-wide/16 v4, 0x8

    .line 408
    invoke-static {v4, v5}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 409
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->z()Z

    move-result v0

    if-nez v0, :cond_7e

    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->w:Z

    if-nez v0, :cond_7e

    const-string v0, "MoPub"

    .line 411
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/adsCommon/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7e

    const-string v0, "AdMob"

    .line 412
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/adsCommon/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7e

    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->x:Z

    if-nez v0, :cond_7e

    .line 414
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/startapp/android/publish/adsCommon/m;->m:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 415
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/m;->i()Z

    move-result v0

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m;->i:Ljava/util/HashMap;

    .line 416
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_7e

    .line 418
    iget-object v5, p0, Lcom/startapp/android/publish/adsCommon/m;->s:Landroid/os/Bundle;

    new-instance v6, Lcom/startapp/android/publish/ads/splash/SplashConfig;

    invoke-direct {v6}, Lcom/startapp/android/publish/ads/splash/SplashConfig;-><init>()V

    new-instance v7, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v7}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/startapp/android/publish/ads/splash/SplashConfig;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/splash/SplashHideListener;Z)V

    :cond_7e
    const/4 v0, 0x1

    .line 421
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->x:Z

    .line 423
    iget-boolean v4, p0, Lcom/startapp/android/publish/adsCommon/m;->d:Z

    if-eqz v4, :cond_88

    .line 424
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/m;->g(Landroid/app/Activity;)V

    :cond_88
    const/4 v4, 0x0

    .line 426
    iput-boolean v4, p0, Lcom/startapp/android/publish/adsCommon/m;->f:Z

    .line 427
    iput-boolean v4, p0, Lcom/startapp/android/publish/adsCommon/m;->d:Z

    .line 430
    iget-object v5, p0, Lcom/startapp/android/publish/adsCommon/m;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_da

    .line 432
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 436
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 439
    iget-object v4, p0, Lcom/startapp/android/publish/adsCommon/m;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity Added:["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_fb

    .line 443
    :cond_da
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] already exists"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_fb
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    if-nez p2, :cond_19

    .line 398
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m;->m:Ljava/lang/String;

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x0

    .line 400
    iput-boolean p1, p0, Lcom/startapp/android/publish/adsCommon/m;->l:Z

    .line 402
    :cond_19
    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/m;->s:Landroid/os/Bundle;

    return-void
.end method

.method a(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x1

    .line 202
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "periodicInfoEventPaused"

    invoke-static {p1, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    const p1, 0x2ee20534

    .line 203
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/Utils/b;->a(I)V

    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;)V
    .registers 4

    .line 773
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/Utils/g;->d()Lcom/startapp/android/publish/adsCommon/Utils/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/startapp/android/publish/adsCommon/Utils/g;->a(Landroid/content/Context;Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;JZZ)V
    .registers 9

    .line 785
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4b

    .line 786
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "1"

    const-string v0, "0"

    if-eqz p5, :cond_13

    move-object v1, p4

    goto :goto_14

    :cond_13
    move-object v1, v0

    :goto_14
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_1c

    const-string p6, "M"

    goto :goto_1e

    :cond_1c
    const-string p6, "A"

    :goto_1e
    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 787
    sget-object p6, Lcom/startapp/android/publish/adsCommon/f/d;->j:Lcom/startapp/android/publish/adsCommon/f/d;

    const-string v1, ""

    invoke-static {p1, p6, p2, p3, v1}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string p3, "pas"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_53

    if-eqz p5, :cond_3b

    goto :goto_3c

    :cond_3b
    move-object p4, v0

    :goto_3c
    const-string p2, "USER_CONSENT_PERSONALIZED_ADS_SERVING"

    .line 790
    invoke-static {p1, p2, p4}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/Utils/g;->d()Lcom/startapp/android/publish/adsCommon/Utils/g;

    move-result-object p2

    sget-object p3, Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;->f:Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;

    invoke-virtual {p2, p1, p3}, Lcom/startapp/android/publish/adsCommon/Utils/g;->a(Landroid/content/Context;Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;)V

    goto :goto_53

    :cond_4b
    const/4 p1, 0x6

    const-string p2, "StartAppSDKInternal"

    const-string p3, "setUserConsent: empty consentType"

    .line 795
    invoke-static {p2, p1, p3}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_53
    :goto_53
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 676
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m;->r:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 678
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/m;->r:Ljava/util/Map;

    .line 680
    :cond_b
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m;->r:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/m;->o(Landroid/content/Context;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;Z)V
    .registers 14

    const-string v0, "shared_prefs_first_init"

    const-string v1, "]"

    const-string v2, ""

    const-wide/16 v3, 0x2

    .line 137
    :try_start_8
    invoke-static {v3, v4}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_f0

    const-string v4, "StartAppSDKInternal"

    if-eqz v3, :cond_1d

    :try_start_10
    const-class v3, Lcom/startapp/android/publish/adsCommon/activities/FullScreenActivity;

    invoke-static {p1, v3}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "FullScreenActivity is missing from AndroidManifest.xml"

    .line 138
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1d
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_2b

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/startapp/android/publish/adsCommon/m;->m:Ljava/lang/String;

    .line 145
    :cond_2b
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2f} :catch_f0

    .line 148
    :try_start_2f
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/e/a;->a(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_3f

    :catch_33
    move-exception v3

    .line 150
    :try_start_34
    sget-object v5, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    const-string v6, "init AdsExceptionHandler"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v5, v6, v3, v2}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_3f
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->f(Landroid/content/Context;)Z

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_49

    const/4 v3, 0x1

    goto :goto_4a

    :cond_49
    const/4 v3, 0x0

    :goto_4a
    invoke-virtual {p0, v3}, Lcom/startapp/android/publish/adsCommon/m;->b(Z)V

    .line 156
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/m;->q(Landroid/content/Context;)V

    .line 159
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/l;->a(Landroid/content/Context;)V

    .line 161
    iget-boolean v3, p0, Lcom/startapp/android/publish/adsCommon/m;->l:Z

    if-nez v3, :cond_e9

    .line 162
    invoke-static {p1}, Lcom/startapp/common/c;->c(Landroid/content/Context;)V

    .line 163
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/Utils/b;->a(Landroid/content/Context;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/m;->k(Landroid/content/Context;)V

    .line 165
    iput-boolean v5, p0, Lcom/startapp/android/publish/adsCommon/m;->l:Z

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initialize StartAppSDK with DevID:["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "], AppID:["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x3

    invoke-static {v4, v7, v3}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 168
    invoke-static {p1, p2, p3}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iput-object p4, p0, Lcom/startapp/android/publish/adsCommon/m;->a:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;

    const-string p2, "shared_prefs_sdk_ad_prefs"

    .line 170
    invoke-static {p1, p2, p4}, Lcom/startapp/common/a/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 171
    invoke-static {p1}, Lcom/startapp/common/d/a;->b(Landroid/content/Context;)V

    .line 172
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 173
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "First Initialization: ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, v7, p3}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p2, :cond_d4

    .line 175
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/m;->n(Landroid/content/Context;)V

    const-string p2, "totalSessions"

    .line 176
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "firstSessionTime"

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 181
    :cond_d4
    sget-object p2, Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;->a:Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;

    invoke-virtual {p0, p1, p2}, Lcom/startapp/android/publish/adsCommon/m;->a(Landroid/content/Context;Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;)V

    .line 182
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/m;->l(Landroid/content/Context;)V

    .line 183
    invoke-direct {p0, p1, p5}, Lcom/startapp/android/publish/adsCommon/m;->a(Landroid/content/Context;Z)V

    .line 184
    iget-boolean p2, p0, Lcom/startapp/android/publish/adsCommon/m;->b:Z

    if-eqz p2, :cond_e6

    .line 185
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/m;->m(Landroid/content/Context;)V

    .line 188
    :cond_e6
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/m;->r(Landroid/content/Context;)V

    .line 191
    :cond_e9
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/m;->j(Landroid/content/Context;)V

    .line 194
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/m;->f(Landroid/content/Context;)V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_ef} :catch_f0

    goto :goto_fc

    :catch_f0
    move-exception p2

    .line 196
    sget-object p3, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p4, "StartAppSDKInternal.intialize - unexpected error occurd"

    invoke-static {p1, p3, p4, p2, v2}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_fc
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 475
    iput-boolean p1, p0, Lcom/startapp/android/publish/adsCommon/m;->p:Z

    return-void
.end method

.method public a(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Z
    .registers 5

    .line 642
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 643
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->f:Z

    if-eqz v0, :cond_a

    return v1

    .line 645
    :cond_a
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->d:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    .line 646
    sget-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_RETURN:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    if-ne p1, v0, :cond_22

    invoke-static {}, Lcom/startapp/android/publish/cache/d;->a()Lcom/startapp/android/publish/cache/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/cache/d;->b()Lcom/startapp/android/publish/cache/ACMConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/cache/ACMConfig;->shouldReturnAdLoadInBg()Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1

    :cond_23
    return v2

    :cond_24
    return v1
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    .line 466
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->n:Z

    .line 467
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->e:Z

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .registers 4

    .line 452
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->e:Z

    if-eqz v0, :cond_12

    .line 453
    iput-boolean v1, p0, Lcom/startapp/android/publish/adsCommon/m;->e:Z

    .line 454
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/cache/a;->b()V

    .line 457
    :cond_12
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->n:Z

    if-eqz v0, :cond_1f

    .line 458
    iput-boolean v1, p0, Lcom/startapp/android/publish/adsCommon/m;->n:Z

    .line 459
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/l;->c(Landroid/content/Context;)V

    .line 461
    :cond_1f
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/m;->k:Landroid/app/Activity;

    return-void
.end method

.method public b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method b(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x1

    .line 207
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "periodicMetadataPaused"

    invoke-static {p1, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    const p1, 0x22f50468

    .line 208
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/Utils/b;->a(I)V

    return-void
.end method

.method public b(Z)V
    .registers 2

    .line 483
    iput-boolean p1, p0, Lcom/startapp/android/publish/adsCommon/m;->o:Z

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 2

    .line 702
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public c(Landroid/app/Activity;)V
    .registers 4

    .line 496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapp/android/publish/adsCommon/m;->g:J

    const/4 p1, 0x0

    .line 497
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/m;->k:Landroid/app/Activity;

    return-void
.end method

.method c(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    .line 212
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "periodicInfoEventPaused"

    invoke-static {p1, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 213
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/Utils/b;->b(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "periodicInfoEventTriggerTime"

    invoke-static {p1, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 214
    invoke-static {p1, v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/b;->a(Landroid/content/Context;J)V

    return-void
.end method

.method public c(Z)V
    .registers 2

    .line 611
    iput-boolean p1, p0, Lcom/startapp/android/publish/adsCommon/m;->v:Z

    return-void
.end method

.method public c()Z
    .registers 2

    .line 471
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->p:Z

    return v0
.end method

.method public d(Landroid/app/Activity;)V
    .registers 9

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityStopped ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StartAppSDKInternal"

    const/4 v3, 0x3

    invoke-static {v2, v3, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_a3

    .line 554
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_54

    .line 558
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    .line 560
    :cond_54
    iget-object v5, p0, Lcom/startapp/android/publish/adsCommon/m;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :goto_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity removed:["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_c2

    .line 566
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->f:Z

    if-nez v0, :cond_8f

    .line 567
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/m;->f(Landroid/app/Activity;)V

    .line 569
    :cond_8f
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->b:Z

    if-eqz v0, :cond_c2

    .line 570
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean v1, p0, Lcom/startapp/android/publish/adsCommon/m;->f:Z

    invoke-virtual {v0, p1, v1}, Lcom/startapp/android/publish/cache/a;->a(Landroid/content/Context;Z)V

    .line 571
    iput-boolean v4, p0, Lcom/startapp/android/publish/adsCommon/m;->e:Z

    goto :goto_c2

    .line 576
    :cond_a3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity hadn\'t been found:["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_c2
    :goto_c2
    return-void
.end method

.method d(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    .line 218
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "periodicMetadataPaused"

    invoke-static {p1, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 219
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/Utils/b;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "periodicMetadataTriggerTime"

    invoke-static {p1, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 220
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/startapp/android/publish/adsCommon/Utils/b;->a(Landroid/content/Context;Ljava/lang/Long;)V

    return-void
.end method

.method public d(Z)V
    .registers 3

    xor-int/lit8 v0, p1, 0x1

    .line 623
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->w:Z

    if-nez p1, :cond_f

    .line 625
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object p1

    sget-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_SPLASH:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/cache/a;->a(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V

    :cond_f
    return-void
.end method

.method public d()Z
    .registers 2

    .line 479
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->o:Z

    return v0
.end method

.method public e(Landroid/app/Activity;)V
    .registers 3

    .line 581
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 582
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->x:Z

    .line 584
    :cond_13
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/m;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_1d

    .line 585
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->d:Z

    :cond_1d
    return-void
.end method

.method e(Landroid/content/Context;)V
    .registers 6

    .line 277
    new-instance v0, Lcom/startapp/android/publish/adsCommon/f/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/startapp/android/publish/adsCommon/f/c;-><init>(Landroid/content/Context;Z)V

    .line 280
    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/f/c;->c()Lcom/startapp/android/publish/adsCommon/f/b;

    move-result-object v1

    .line 281
    sget-object v2, Lcom/startapp/android/publish/adsCommon/AdsConstants;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/adsCommon/f/b;->c(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/f/c;->a()V

    .line 287
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/m;->e()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 288
    sget-object v0, Lcom/startapp/android/publish/adsCommon/f/d;->d:Lcom/startapp/android/publish/adsCommon/f/d;

    sget-object v1, Lcom/startapp/android/publish/adsCommon/AdsConstants;->j:Ljava/lang/String;

    const-string v2, "packagingType"

    const-string v3, ""

    invoke-static {p1, v0, v2, v1, v3}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method protected e(Z)V
    .registers 3

    if-eqz p1, :cond_a

    .line 777
    invoke-static {}, Lcom/startapp/common/a/c;->b()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    .line 778
    :goto_b
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/m;->g(Z)V

    if-nez p1, :cond_19

    .line 780
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object p1

    sget-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_RETURN:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/cache/a;->a(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V

    :cond_19
    return-void
.end method

.method public e()Z
    .registers 2

    .line 487
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->q:Z

    return v0
.end method

.method public f(Landroid/content/Context;)V
    .registers 5

    .line 374
    invoke-static {}, Lcom/startapp/common/a/c;->b()Z

    move-result v0

    const/4 v1, 0x6

    const-string v2, "StartAppSDKInternal"

    if-eqz v0, :cond_51

    .line 375
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_18

    .line 376
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/m;->k:Landroid/app/Activity;

    .line 377
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/m;->h:Landroid/app/Application;

    goto :goto_28

    .line 378
    :cond_18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_4b

    .line 379
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/m;->h:Landroid/app/Application;

    :goto_28
    const/4 p1, 0x3

    .line 386
    :try_start_29
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m;->j:Ljava/lang/Object;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m;->h:Landroid/app/Application;

    if-eqz v0, :cond_3d

    .line 387
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m;->h:Landroid/app/Application;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/m;->j:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/m;->a(Landroid/app/Application;Ljava/lang/Object;)V

    const-string v0, "Unregistered LifeCycle Callbacks"

    .line 388
    invoke-static {v2, p1, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3d} :catch_3d

    :catch_3d
    :cond_3d
    const-string v0, "Registring LifeCycle Callbacks"

    .line 391
    invoke-static {v2, p1, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 392
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/m;->h:Landroid/app/Application;

    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/m;->a(Landroid/app/Application;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/m;->j:Ljava/lang/Object;

    goto :goto_56

    :cond_4b
    const-string p1, "Cannot register activity life cycle callbacks - context is not an Activity"

    .line 381
    invoke-static {v2, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_51
    const-string p1, "Cannot register activity life cycle callbacks - api lower than 14"

    .line 394
    invoke-static {v2, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_56
    return-void
.end method

.method public f()Z
    .registers 2

    .line 590
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m;->k:Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 591
    invoke-virtual {v0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public g(Landroid/content/Context;)Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;
    .registers 4

    .line 706
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m;->a:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;

    if-nez v0, :cond_1a

    .line 707
    const-class v0, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;

    const-string v1, "shared_prefs_sdk_ad_prefs"

    invoke-static {p1, v1, v0}, Lcom/startapp/common/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;

    if-nez p1, :cond_18

    .line 709
    new-instance p1, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;

    invoke-direct {p1}, Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;-><init>()V

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/m;->a:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;

    goto :goto_1a

    .line 711
    :cond_18
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/m;->a:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;

    .line 714
    :cond_1a
    :goto_1a
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/m;->a:Lcom/startapp/android/publish/adsCommon/SDKAdPreferences;

    return-object p1
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 599
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m;->m:Ljava/lang/String;

    return-object v0
.end method

.method public h(Landroid/content/Context;)V
    .registers 4

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "USER_CONSENT_FINE_LOCATION"

    .line 800
    invoke-direct {p0, p1, v0, v1}, Lcom/startapp/android/publish/adsCommon/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "USER_CONSENT_COARSE_LOCATION"

    .line 801
    invoke-direct {p0, p1, v0, v1}, Lcom/startapp/android/publish/adsCommon/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h()Z
    .registers 2

    .line 603
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->u:Z

    return v0
.end method

.method public i()Z
    .registers 2

    .line 607
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->v:Z

    return v0
.end method

.method public j()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 619
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/adsCommon/m;->d(Z)V

    return-void
.end method

.method public k()Z
    .registers 2

    .line 630
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->w:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public l()Z
    .registers 2

    .line 638
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->c:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->d:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->f:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public m()V
    .registers 2

    const/4 v0, 0x0

    .line 663
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->d:Z

    const/4 v0, 0x1

    .line 664
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->f:Z

    return-void
.end method

.method public n()Z
    .registers 2

    .line 668
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->c:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/m;->d:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public o()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 698
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/m;->r:Ljava/util/Map;

    return-object v0
.end method

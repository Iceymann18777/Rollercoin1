.class public Lcom/appnext/base/Appnext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final dp:Lcom/appnext/base/Appnext;


# instance fields
.field private do:Landroid/content/Context;

.field private dq:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lcom/appnext/base/Appnext;

    invoke-direct {v0}, Lcom/appnext/base/Appnext;-><init>()V

    sput-object v0, Lcom/appnext/base/Appnext;->dp:Lcom/appnext/base/Appnext;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/appnext/base/Appnext;->do:Landroid/content/Context;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/appnext/base/Appnext;->dq:Z

    return-void
.end method

.method protected static T()Lcom/appnext/base/Appnext;
    .registers 1

    .line 31
    sget-object v0, Lcom/appnext/base/Appnext;->dp:Lcom/appnext/base/Appnext;

    return-object v0
.end method

.method private U()V
    .registers 5

    const-string v0, "google_ads_id"

    .line 107
    :try_start_2
    iget-object v1, p0, Lcom/appnext/base/Appnext;->do:Landroid/content/Context;

    const/4 v2, 0x1

    .line 1110
    invoke-static {v1, v2}, Lcom/appnext/core/f;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lcom/appnext/base/b/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 111
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/b/i;->clear()V

    .line 112
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/appnext/base/b/i;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_27

    :catchall_27
    :cond_27
    return-void
.end method

.method static synthetic a(Lcom/appnext/base/Appnext;)Landroid/content/Context;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/appnext/base/Appnext;->do:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/appnext/base/Appnext;Z)Z
    .registers 2

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/appnext/base/Appnext;->dq:Z

    return p1
.end method

.method private b(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ExceptionInInitializerError;
        }
    .end annotation

    if-eqz p1, :cond_33

    .line 44
    :try_start_2
    iget-boolean v0, p0, Lcom/appnext/base/Appnext;->dq:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/appnext/base/Appnext;->do:Landroid/content/Context;

    if-eqz v0, :cond_11

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/base/Appnext;->do:Landroid/content/Context;

    return-void

    :cond_11
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/appnext/base/Appnext;->dq:Z

    .line 51
    invoke-static {p1}, Lcom/appnext/base/b/e;->init(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/base/Appnext;->do:Landroid/content/Context;

    .line 61
    const-class p1, Lcom/appnext/base/services/OperationService;

    invoke-static {p1}, Lcom/appnext/base/b/j;->a(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_26

    return-void

    .line 65
    :cond_26
    invoke-static {}, Lcom/appnext/base/b/g;->aN()Lcom/appnext/base/b/g;

    move-result-object p1

    new-instance v0, Lcom/appnext/base/Appnext$1;

    invoke-direct {v0, p0}, Lcom/appnext/base/Appnext$1;-><init>(Lcom/appnext/base/Appnext;)V

    invoke-virtual {p1, v0}, Lcom/appnext/base/b/g;->b(Ljava/lang/Runnable;)V
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_32

    :catchall_32
    return-void

    .line 41
    :cond_33
    new-instance p1, Ljava/lang/ExceptionInInitializerError;

    const-string v0, "Cannot init Appnext with null context"

    invoke-direct {p1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic b(Lcom/appnext/base/Appnext;)V
    .registers 4

    const-string v0, "google_ads_id"

    .line 2107
    :try_start_2
    iget-object p0, p0, Lcom/appnext/base/Appnext;->do:Landroid/content/Context;

    const/4 v1, 0x1

    .line 3110
    invoke-static {p0, v1}, Lcom/appnext/core/f;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    .line 2108
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/appnext/base/b/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2110
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 2111
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/base/b/i;->clear()V

    .line 2112
    invoke-static {}, Lcom/appnext/base/b/i;->aR()Lcom/appnext/base/b/i;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/appnext/base/b/i;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_27

    :catchall_27
    :cond_27
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    .line 1031
    sget-object v0, Lcom/appnext/base/Appnext;->dp:Lcom/appnext/base/Appnext;

    if-eqz p0, :cond_35

    .line 1044
    :try_start_4
    iget-boolean v1, v0, Lcom/appnext/base/Appnext;->dq:Z

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/appnext/base/Appnext;->do:Landroid/content/Context;

    if-eqz v1, :cond_13

    .line 1045
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v0, Lcom/appnext/base/Appnext;->do:Landroid/content/Context;

    return-void

    :cond_13
    const/4 v1, 0x1

    .line 1049
    iput-boolean v1, v0, Lcom/appnext/base/Appnext;->dq:Z

    .line 1051
    invoke-static {p0}, Lcom/appnext/base/b/e;->init(Landroid/content/Context;)V

    .line 1060
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v0, Lcom/appnext/base/Appnext;->do:Landroid/content/Context;

    .line 1061
    const-class p0, Lcom/appnext/base/services/OperationService;

    invoke-static {p0}, Lcom/appnext/base/b/j;->a(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_28

    return-void

    .line 1065
    :cond_28
    invoke-static {}, Lcom/appnext/base/b/g;->aN()Lcom/appnext/base/b/g;

    move-result-object p0

    new-instance v1, Lcom/appnext/base/Appnext$1;

    invoke-direct {v1, v0}, Lcom/appnext/base/Appnext$1;-><init>(Lcom/appnext/base/Appnext;)V

    invoke-virtual {p0, v1}, Lcom/appnext/base/b/g;->b(Ljava/lang/Runnable;)V
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_34

    :catchall_34
    return-void

    .line 1041
    :cond_35
    new-instance p0, Ljava/lang/ExceptionInInitializerError;

    const-string v0, "Cannot init Appnext with null context"

    invoke-direct {p0, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 96
    :try_start_0
    invoke-static {}, Lcom/appnext/base/b/e;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 98
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, 0x38b6c01a

    if-ne p0, v0, :cond_17

    const-string p0, "isAidDisabled"

    .line 99
    sget-object v0, Lcom/appnext/base/b/d$a;->Boolean:Lcom/appnext/base/b/d$a;

    invoke-static {p0, p1, v0}, Lcom/appnext/base/b/j;->a(Ljava/lang/String;Ljava/lang/String;Lcom/appnext/base/b/d$a;)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_17

    :catchall_17
    :cond_17
    return-void
.end method

.class public Lcom/tappx/a/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/y0$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/tappx/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tappx/a/d<",
            "Lcom/tappx/a/y0$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/tappx/a/j;

    sget-wide v1, Lcom/tappx/a/n;->c:J

    invoke-direct {v0, v1, v2}, Lcom/tappx/a/j;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/tappx/a/y0;-><init>(Landroid/content/Context;Lcom/tappx/a/d;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/tappx/a/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tappx/a/d<",
            "Lcom/tappx/a/y0$a;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/tappx/a/y0;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/tappx/a/y0;->b:Lcom/tappx/a/d;

    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 8
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getId"

    invoke-static {v1, v2, v0}, Lcom/tappx/a/y0;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_15

    return-object p1

    :catch_15
    return-object v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_c

    .line 10
    :try_start_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_6} :catch_7

    return-object p0

    .line 12
    :catch_7
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 16
    :cond_c
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    goto :goto_13

    :goto_12
    throw p0

    :goto_13
    goto :goto_12
.end method

.method private b()Lcom/tappx/a/y0$a;
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    iget-object v2, p0, Lcom/tappx/a/y0;->a:Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Class;

    .line 2
    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v3

    const-string v2, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getAdvertisingIdInfo"

    .line 4
    invoke-static {v2, v3, v0}, Lcom/tappx/a/y0;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-direct {p0, v0}, Lcom/tappx/a/y0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-direct {p0, v0}, Lcom/tappx/a/y0;->b(Ljava/lang/Object;)Z

    move-result v0

    .line 8
    new-instance v2, Lcom/tappx/a/y0$a;

    invoke-direct {v2, v1, v0}, Lcom/tappx/a/y0$a;-><init>(Ljava/lang/String;Z)V

    return-object v2
.end method

.method private b(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    .line 9
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isLimitAdTrackingEnabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/tappx/a/y0;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_17

    return v0

    .line 12
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1c

    return p1

    :catch_1c
    return v0
.end method


# virtual methods
.method public a()Lcom/tappx/a/y0$a;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/y0;->b:Lcom/tappx/a/d;

    invoke-interface {v0}, Lcom/tappx/a/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tappx/a/y0$a;

    if-eqz v0, :cond_b

    return-object v0

    .line 6
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/tappx/a/y0;->b()Lcom/tappx/a/y0$a;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/tappx/a/y0;->b:Lcom/tappx/a/d;

    invoke-interface {v1, v0}, Lcom/tappx/a/d;->a(Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    const/4 v0, 0x0

    return-object v0
.end method

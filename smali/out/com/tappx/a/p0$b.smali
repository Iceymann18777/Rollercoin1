.class public Lcom/tappx/a/p0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/p0$b$a;
    }
.end annotation


# static fields
.field private static volatile d:Lcom/tappx/a/p0$b;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/tappx/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tappx/a/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/tappx/a/p0$b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/tappx/a/p0$b$a;

    invoke-direct {v0, p1}, Lcom/tappx/a/p0$b$a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/tappx/a/p0$b;-><init>(Landroid/content/Context;Lcom/tappx/a/p0$b$a;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/tappx/a/p0$b$a;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/tappx/a/k;

    invoke-direct {v0}, Lcom/tappx/a/k;-><init>()V

    iput-object v0, p0, Lcom/tappx/a/p0$b;->b:Lcom/tappx/a/d;

    .line 11
    iput-object p1, p0, Lcom/tappx/a/p0$b;->a:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/tappx/a/p0$b;->c:Lcom/tappx/a/p0$b$a;

    return-void
.end method

.method private a(II)I
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    if-ge p1, p2, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x2

    return p1
.end method

.method public static final a(Landroid/content/Context;)Lcom/tappx/a/p0$b;
    .registers 3

    .line 1
    sget-object v0, Lcom/tappx/a/p0$b;->d:Lcom/tappx/a/p0$b;

    if-nez v0, :cond_1b

    .line 3
    const-class v0, Lcom/tappx/a/p0$b;

    monitor-enter v0

    .line 4
    :try_start_7
    sget-object v1, Lcom/tappx/a/p0$b;->d:Lcom/tappx/a/p0$b;

    if-nez v1, :cond_16

    .line 6
    new-instance v1, Lcom/tappx/a/p0$b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/tappx/a/p0$b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tappx/a/p0$b;->d:Lcom/tappx/a/p0$b;

    .line 8
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    .line 10
    :cond_1b
    :goto_1b
    sget-object p0, Lcom/tappx/a/p0$b;->d:Lcom/tappx/a/p0$b;

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, "en-us"

    :goto_d
    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/p0$b;->b:Lcom/tappx/a/d;

    invoke-interface {v0}, Lcom/tappx/a/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_15

    .line 3
    iget-object v0, p0, Lcom/tappx/a/p0$b;->c:Lcom/tappx/a/p0$b$a;

    invoke-virtual {v0}, Lcom/tappx/a/p0$b$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/tappx/a/p0$b;->b:Lcom/tappx/a/d;

    invoke-interface {v1, v0}, Lcom/tappx/a/d;->a(Ljava/lang/Object;)V

    :cond_15
    return-object v0
.end method


# virtual methods
.method public a()Lcom/tappx/a/p0;
    .registers 14

    .line 11
    invoke-direct {p0}, Lcom/tappx/a/p0$b;->b()Ljava/lang/String;

    move-result-object v1

    .line 12
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 13
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 14
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 16
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 20
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 21
    iget-object v5, p0, Lcom/tappx/a/p0$b;->a:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 22
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 23
    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 24
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 25
    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 26
    invoke-direct {p0, v7, v8}, Lcom/tappx/a/p0$b;->a(II)I

    move-result v9

    .line 27
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    .line 29
    invoke-direct {p0}, Lcom/tappx/a/p0$b;->c()Ljava/lang/String;

    move-result-object v11

    .line 30
    new-instance v12, Lcom/tappx/a/p0;

    const-string v5, "android"

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/tappx/a/p0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    return-object v12
.end method

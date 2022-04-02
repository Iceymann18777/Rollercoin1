.class public Lcom/tappx/a/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/q0;


# static fields
.field private static final d:[Lcom/google/android/gms/ads/AdSize;


# instance fields
.field private final a:Lcom/google/android/gms/ads/AdView;

.field private b:Z

.field private c:Lcom/tappx/a/m0$c;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/gms/ads/AdSize;

    .line 1
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->WIDE_SKYSCRAPER:Lcom/google/android/gms/ads/AdSize;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/tappx/a/s0;->d:[Lcom/google/android/gms/ads/AdSize;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tappx/a/s0;->b:Z

    .line 6
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tappx/a/s0;->a:Lcom/google/android/gms/ads/AdView;

    return-void
.end method

.method private a(II)Lcom/google/android/gms/ads/AdSize;
    .registers 8

    .line 52
    sget-object v0, Lcom/tappx/a/s0;->d:[Lcom/google/android/gms/ads/AdSize;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 53
    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v4

    if-ne v4, p1, :cond_15

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v4

    if-ne v4, p2, :cond_15

    return-object v3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 57
    :cond_18
    sget-object p1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    return-object p1
.end method

.method static synthetic a(Lcom/tappx/a/s0;)Lcom/google/android/gms/ads/AdView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/s0;->a:Lcom/google/android/gms/ads/AdView;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/tappx/a/s0;->a:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method public a(Lcom/tappx/a/m0$c;Ljava/lang/Runnable;)V
    .registers 5

    .line 2
    iput-object p1, p0, Lcom/tappx/a/s0;->c:Lcom/tappx/a/m0$c;

    if-nez p1, :cond_b

    .line 5
    :try_start_4
    iget-object p1, p0, Lcom/tappx/a/s0;->a:Lcom/google/android/gms/ads/AdView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void

    .line 8
    :cond_b
    iget-object v0, p0, Lcom/tappx/a/s0;->a:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/tappx/a/s0$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/tappx/a/s0$a;-><init>(Lcom/tappx/a/s0;Lcom/tappx/a/m0$c;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_16

    goto :goto_19

    :catchall_16
    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/tappx/a/s0;->b:Z

    :goto_19
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .registers 4

    .line 47
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/tappx/a/s0;->a(II)Lcom/google/android/gms/ads/AdSize;

    move-result-object p2

    .line 48
    iget-object p3, p0, Lcom/tappx/a/s0;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p3, p2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 49
    iget-object p2, p0, Lcom/tappx/a/s0;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    goto :goto_12

    :catchall_f
    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/tappx/a/s0;->b:Z

    :goto_12
    return-void
.end method

.method public destroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/s0;->a:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    :cond_7
    return-void
.end method

.method public loadAd()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/s0;->b:Z

    if-eqz v0, :cond_e

    .line 2
    iget-object v0, p0, Lcom/tappx/a/s0;->c:Lcom/tappx/a/m0$c;

    if-eqz v0, :cond_d

    sget-object v1, Lcom/tappx/a/a2;->d:Lcom/tappx/a/a2;

    invoke-interface {v0, v1}, Lcom/tappx/a/m0$c;->a(Lcom/tappx/a/a2;)V

    :cond_d
    return-void

    .line 6
    :cond_e
    :try_start_e
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/tappx/a/s0;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1c

    :catchall_1c
    return-void
.end method

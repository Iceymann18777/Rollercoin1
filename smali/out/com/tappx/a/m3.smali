.class public Lcom/tappx/a/m3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Lcom/tappx/a/k3;

.field private static final b:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tappx/a/k3;

    .line 1
    sget-object v1, Lcom/tappx/a/k3;->c:Lcom/tappx/a/k3;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/tappx/a/k3;->b:Lcom/tappx/a/k3;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/tappx/a/k3;->d:Lcom/tappx/a/k3;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/tappx/a/k3;->e:Lcom/tappx/a/k3;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/tappx/a/m3;->a:[Lcom/tappx/a/k3;

    .line 2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tappx/a/m3;->b:Ljava/util/Random;

    return-void
.end method

.method private static a(Landroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;
    .registers 12

    .line 17
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    int-to-long v0, p1

    .line 22
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 23
    invoke-virtual {v9, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v9
.end method

.method public static a(Lcom/tappx/a/k3;)Landroid/view/animation/Animation;
    .registers 4

    .line 1
    sget-object v0, Lcom/tappx/a/k3;->f:Lcom/tappx/a/k3;

    if-ne p0, v0, :cond_8

    .line 2
    invoke-static {}, Lcom/tappx/a/m3;->a()Lcom/tappx/a/k3;

    move-result-object p0

    .line 4
    :cond_8
    sget-object v0, Lcom/tappx/a/m3$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/16 v1, 0x320

    if-eq p0, v0, :cond_40

    const/4 v0, 0x2

    const/16 v2, 0x5dc

    if-eq p0, v0, :cond_36

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2c

    const/4 v0, 0x4

    if-eq p0, v0, :cond_22

    const/4 p0, 0x0

    return-object p0

    .line 12
    :cond_22
    new-instance p0, Lcom/tappx/a/a;

    invoke-direct {p0}, Lcom/tappx/a/a;-><init>()V

    invoke-static {p0, v2}, Lcom/tappx/a/m3;->b(Landroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    .line 13
    :cond_2c
    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-static {p0, v1}, Lcom/tappx/a/m3;->b(Landroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    .line 14
    :cond_36
    new-instance p0, Lcom/tappx/a/a;

    invoke-direct {p0}, Lcom/tappx/a/a;-><init>()V

    invoke-static {p0, v2}, Lcom/tappx/a/m3;->a(Landroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    .line 15
    :cond_40
    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-static {p0, v1}, Lcom/tappx/a/m3;->a(Landroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method static a()Lcom/tappx/a/k3;
    .registers 3

    .line 16
    sget-object v0, Lcom/tappx/a/m3;->a:[Lcom/tappx/a/k3;

    sget-object v1, Lcom/tappx/a/m3;->b:Ljava/util/Random;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static b(Landroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;
    .registers 12

    .line 1
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    int-to-long v0, p1

    .line 6
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 7
    invoke-virtual {v9, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v9
.end method

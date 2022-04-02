.class public Lcom/tappx/a/k5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/w5;


# instance fields
.field private a:I

.field private b:I

.field private final c:I

.field private final d:F


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/tappx/a/k5;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/tappx/a/k5;->a:I

    .line 4
    iput p2, p0, Lcom/tappx/a/k5;->c:I

    .line 5
    iput p3, p0, Lcom/tappx/a/k5;->d:F

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/k5;->a:I

    return v0
.end method

.method public a(Lcom/tappx/a/z5;)V
    .registers 5

    .line 2
    iget v0, p0, Lcom/tappx/a/k5;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tappx/a/k5;->b:I

    .line 3
    iget v0, p0, Lcom/tappx/a/k5;->a:I

    int-to-float v1, v0

    iget v2, p0, Lcom/tappx/a/k5;->d:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tappx/a/k5;->a:I

    .line 4
    invoke-virtual {p0}, Lcom/tappx/a/k5;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    .line 5
    :cond_18
    throw p1
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/k5;->b:I

    return v0
.end method

.method protected c()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/tappx/a/k5;->b:I

    iget v1, p0, Lcom/tappx/a/k5;->c:I

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

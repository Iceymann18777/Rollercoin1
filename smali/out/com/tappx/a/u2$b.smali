.class final Lcom/tappx/a/u2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/f0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/u2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/v2;

.field private b:I

.field final synthetic c:Lcom/tappx/a/u2;


# direct methods
.method private constructor <init>(Lcom/tappx/a/u2;Lcom/tappx/a/v2;)V
    .registers 3

    .line 2
    iput-object p1, p0, Lcom/tappx/a/u2$b;->c:Lcom/tappx/a/u2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/tappx/a/u2$b;->b:I

    .line 6
    iput-object p2, p0, Lcom/tappx/a/u2$b;->a:Lcom/tappx/a/v2;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tappx/a/u2;Lcom/tappx/a/v2;Lcom/tappx/a/u2$a;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tappx/a/u2$b;-><init>(Lcom/tappx/a/u2;Lcom/tappx/a/v2;)V

    return-void
.end method

.method private a(I)I
    .registers 6

    int-to-float p1, p1

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float p1, p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 9
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-int p1, v0

    return p1
.end method


# virtual methods
.method public a(Lcom/tappx/a/a0;)V
    .registers 5

    .line 1
    iget p1, p0, Lcom/tappx/a/u2$b;->b:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/tappx/a/u2$b;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-le p1, v2, :cond_19

    new-array v2, v0, [Ljava/lang/Object;

    sub-int/2addr p1, v0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "VVPuWC/9Kuu7F3i2uDo+EpXhKnuxQFx794EdWq4sqJx9G87i++pCpDIUbWEx83NA"

    invoke-static {p1, v2}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_19
    invoke-direct {p0, p1}, Lcom/tappx/a/u2$b;->a(I)I

    move-result p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "nLLZ8hYKbSEKzUbM0u+Pir24N5Oaw+Lx+MoBG+cviQs"

    invoke-static {v1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/tappx/a/u2$b;->c:Lcom/tappx/a/u2;

    invoke-static {v0}, Lcom/tappx/a/u2;->a(Lcom/tappx/a/u2;)Lcom/tappx/a/b0;

    move-result-object v0

    iget-object v1, p0, Lcom/tappx/a/u2$b;->a:Lcom/tappx/a/v2;

    invoke-interface {v0, v1, p1}, Lcom/tappx/a/b0;->a(Lcom/tappx/a/d0;I)V

    return-void
.end method

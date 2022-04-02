.class public Lcom/tappx/a/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:F

.field private d:Z


# direct methods
.method public constructor <init>(IIF)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/tappx/a/g0;->a:I

    .line 3
    iput p2, p0, Lcom/tappx/a/g0;->b:I

    .line 4
    iput p3, p0, Lcom/tappx/a/g0;->c:F

    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/g0;->c:F

    return v0
.end method

.method public a(Z)Lcom/tappx/a/g0;
    .registers 2

    .line 2
    iput-boolean p1, p0, Lcom/tappx/a/g0;->d:Z

    return-object p0
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/g0;->a:I

    return v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/g0;->b:I

    return v0
.end method

.method public d()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/g0;->d:Z

    return v0
.end method

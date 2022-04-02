.class public final Lcom/b/a/a/a/b/a/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/b/a/a/a/b/i;


# direct methods
.method private constructor <init>(Lcom/b/a/a/a/b/i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/a/b/a/a;->a:Lcom/b/a/a/a/b/i;

    return-void
.end method

.method public static a(Lcom/b/a/a/a/b/b;)Lcom/b/a/a/a/b/a/a;
    .registers 3

    move-object v0, p0

    check-cast v0, Lcom/b/a/a/a/b/i;

    const-string v1, "AdSession is null"

    invoke-static {p0, v1}, Lcom/b/a/a/a/e/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/b/a/a/a/e/e;->g(Lcom/b/a/a/a/b/i;)V

    invoke-static {v0}, Lcom/b/a/a/a/e/e;->a(Lcom/b/a/a/a/b/i;)V

    invoke-static {v0}, Lcom/b/a/a/a/e/e;->b(Lcom/b/a/a/a/b/i;)V

    invoke-static {v0}, Lcom/b/a/a/a/e/e;->e(Lcom/b/a/a/a/b/i;)V

    new-instance p0, Lcom/b/a/a/a/b/a/a;

    invoke-direct {p0, v0}, Lcom/b/a/a/a/b/a/a;-><init>(Lcom/b/a/a/a/b/i;)V

    invoke-virtual {v0}, Lcom/b/a/a/a/b/i;->f()Lcom/b/a/a/a/g/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/a/a/g/a;->a(Lcom/b/a/a/a/b/a/a;)V

    return-object p0
.end method

.method private b(F)V
    .registers 3

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-lez p1, :cond_6

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Video duration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(F)V
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_c

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_c

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Video volume"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/b/a/a/a/b/a/a;->a:Lcom/b/a/a/a/b/i;

    invoke-static {v0}, Lcom/b/a/a/a/e/e;->c(Lcom/b/a/a/a/b/i;)V

    iget-object v0, p0, Lcom/b/a/a/a/b/a/a;->a:Lcom/b/a/a/a/b/i;

    invoke-virtual {v0}, Lcom/b/a/a/a/b/i;->f()Lcom/b/a/a/a/g/a;

    move-result-object v0

    const-string v1, "firstQuartile"

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/g/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(F)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/b/a/a/a/b/a/a;->c(F)V

    iget-object v0, p0, Lcom/b/a/a/a/b/a/a;->a:Lcom/b/a/a/a/b/i;

    invoke-static {v0}, Lcom/b/a/a/a/e/e;->c(Lcom/b/a/a/a/b/i;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "videoPlayerVolume"

    invoke-static {v0, v1, p1}, Lcom/b/a/a/a/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/b/a/a/a/c/e;->a()Lcom/b/a/a/a/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/a/a/c/e;->d()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "deviceVolume"

    invoke-static {v0, v1, p1}, Lcom/b/a/a/a/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/b/a/a/a/b/a/a;->a:Lcom/b/a/a/a/b/i;

    invoke-virtual {p1}, Lcom/b/a/a/a/b/i;->f()Lcom/b/a/a/a/g/a;

    move-result-object p1

    const-string v1, "volumeChange"

    invoke-virtual {p1, v1, v0}, Lcom/b/a/a/a/g/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(FF)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/b/a/a/a/b/a/a;->b(F)V

    invoke-direct {p0, p2}, Lcom/b/a/a/a/b/a/a;->c(F)V

    iget-object v0, p0, Lcom/b/a/a/a/b/a/a;->a:Lcom/b/a/a/a/b/i;

    invoke-static {v0}, Lcom/b/a/a/a/e/e;->c(Lcom/b/a/a/a/b/i;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "duration"

    invoke-static {v0, v1, p1}, Lcom/b/a/a/a/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "videoPlayerVolume"

    invoke-static {v0, p2, p1}, Lcom/b/a/a/a/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/b/a/a/a/c/e;->a()Lcom/b/a/a/a/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/a/a/c/e;->d()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "deviceVolume"

    invoke-static {v0, p2, p1}, Lcom/b/a/a/a/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/b/a/a/a/b/a/a;->a:Lcom/b/a/a/a/b/i;

    invoke-virtual {p1}, Lcom/b/a/a/a/b/i;->f()Lcom/b/a/a/a/g/a;

    move-result-object p1

    const-string p2, "start"

    invoke-virtual {p1, p2, v0}, Lcom/b/a/a/a/g/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/b/a/a/a/b/a/a;->a:Lcom/b/a/a/a/b/i;

    invoke-static {v0}, Lcom/b/a/a/a/e/e;->c(Lcom/b/a/a/a/b/i;)V

    iget-object v0, p0, Lcom/b/a/a/a/b/a/a;->a:Lcom/b/a/a/a/b/i;

    invoke-virtual {v0}, Lcom/b/a/a/a/b/i;->f()Lcom/b/a/a/a/g/a;

    move-result-object v0

    const-string v1, "midpoint"

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/g/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/b/a/a/a/b/a/a;->a:Lcom/b/a/a/a/b/i;

    invoke-static {v0}, Lcom/b/a/a/a/e/e;->c(Lcom/b/a/a/a/b/i;)V

    iget-object v0, p0, Lcom/b/a/a/a/b/a/a;->a:Lcom/b/a/a/a/b/i;

    invoke-virtual {v0}, Lcom/b/a/a/a/b/i;->f()Lcom/b/a/a/a/g/a;

    move-result-object v0

    const-string v1, "thirdQuartile"

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/g/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/b/a/a/a/b/a/a;->a:Lcom/b/a/a/a/b/i;

    invoke-static {v0}, Lcom/b/a/a/a/e/e;->c(Lcom/b/a/a/a/b/i;)V

    iget-object v0, p0, Lcom/b/a/a/a/b/a/a;->a:Lcom/b/a/a/a/b/i;

    invoke-virtual {v0}, Lcom/b/a/a/a/b/i;->f()Lcom/b/a/a/a/g/a;

    move-result-object v0

    const-string v1, "complete"

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/g/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .registers 3

    iget-object v0, p0, Lcom/b/a/a/a/b/a/a;->a:Lcom/b/a/a/a/b/i;

    invoke-static {v0}, Lcom/b/a/a/a/e/e;->c(Lcom/b/a/a/a/b/i;)V

    iget-object v0, p0, Lcom/b/a/a/a/b/a/a;->a:Lcom/b/a/a/a/b/i;

    invoke-virtual {v0}, Lcom/b/a/a/a/b/i;->f()Lcom/b/a/a/a/g/a;

    move-result-object v0

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/g/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Lcom/b/a/a/a/b/a/a;->a:Lcom/b/a/a/a/b/i;

    invoke-static {v0}, Lcom/b/a/a/a/e/e;->c(Lcom/b/a/a/a/b/i;)V

    iget-object v0, p0, Lcom/b/a/a/a/b/a/a;->a:Lcom/b/a/a/a/b/i;

    invoke-virtual {v0}, Lcom/b/a/a/a/b/i;->f()Lcom/b/a/a/a/g/a;

    move-result-object v0

    const-string v1, "bufferStart"

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/g/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .registers 3

    iget-object v0, p0, Lcom/b/a/a/a/b/a/a;->a:Lcom/b/a/a/a/b/i;

    invoke-static {v0}, Lcom/b/a/a/a/e/e;->c(Lcom/b/a/a/a/b/i;)V

    iget-object v0, p0, Lcom/b/a/a/a/b/a/a;->a:Lcom/b/a/a/a/b/i;

    invoke-virtual {v0}, Lcom/b/a/a/a/b/i;->f()Lcom/b/a/a/a/g/a;

    move-result-object v0

    const-string v1, "bufferFinish"

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/g/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .registers 3

    iget-object v0, p0, Lcom/b/a/a/a/b/a/a;->a:Lcom/b/a/a/a/b/i;

    invoke-static {v0}, Lcom/b/a/a/a/e/e;->c(Lcom/b/a/a/a/b/i;)V

    iget-object v0, p0, Lcom/b/a/a/a/b/a/a;->a:Lcom/b/a/a/a/b/i;

    invoke-virtual {v0}, Lcom/b/a/a/a/b/i;->f()Lcom/b/a/a/a/g/a;

    move-result-object v0

    const-string v1, "skipped"

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/g/a;->a(Ljava/lang/String;)V

    return-void
.end method

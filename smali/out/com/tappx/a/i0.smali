.class final Lcom/tappx/a/i0;
.super Lcom/tappx/a/s5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tappx/a/s5<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final q:Lcom/tappx/a/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tappx/a/d0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tappx/a/d0;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/d0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/tappx/a/d0;->d()Lcom/tappx/a/d0$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tappx/a/i0;->a(Lcom/tappx/a/d0$a;)I

    move-result v0

    invoke-virtual {p1}, Lcom/tappx/a/d0;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tappx/a/i0$a;

    invoke-direct {v2, p1}, Lcom/tappx/a/i0$a;-><init>(Lcom/tappx/a/d0;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/tappx/a/s5;-><init>(ILjava/lang/String;Lcom/tappx/a/u5$a;)V

    .line 21
    iput-object p1, p0, Lcom/tappx/a/i0;->q:Lcom/tappx/a/d0;

    .line 22
    invoke-virtual {p0, p1}, Lcom/tappx/a/i0;->a(Lcom/tappx/a/d0;)V

    .line 23
    invoke-virtual {p1}, Lcom/tappx/a/d0;->i()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tappx/a/s5;->a(Z)Lcom/tappx/a/s5;

    return-void
.end method

.method private static a(Lcom/tappx/a/d0$a;)I
    .registers 2

    .line 1
    sget-object v0, Lcom/tappx/a/i0$b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_1a

    const/4 p0, 0x0

    return p0

    :pswitch_d
    const/4 p0, 0x2

    return p0

    :pswitch_f
    const/4 p0, 0x7

    return p0

    :pswitch_11
    const/4 p0, 0x5

    return p0

    :pswitch_13
    const/4 p0, 0x4

    return p0

    :pswitch_15
    const/4 p0, 0x3

    return p0

    :pswitch_17
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_15
        :pswitch_13
        :pswitch_11
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method

.method private a(Lcom/tappx/a/d0$b;)Lcom/tappx/a/s5$c;
    .registers 3

    .line 17
    sget-object v0, Lcom/tappx/a/i0$b;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    const/4 v0, 0x3

    if-eq p1, v0, :cond_14

    .line 26
    sget-object p1, Lcom/tappx/a/s5$c;->b:Lcom/tappx/a/s5$c;

    return-object p1

    .line 27
    :cond_14
    sget-object p1, Lcom/tappx/a/s5$c;->d:Lcom/tappx/a/s5$c;

    return-object p1

    .line 28
    :cond_17
    sget-object p1, Lcom/tappx/a/s5$c;->c:Lcom/tappx/a/s5$c;

    return-object p1

    .line 29
    :cond_1a
    sget-object p1, Lcom/tappx/a/s5$c;->a:Lcom/tappx/a/s5$c;

    return-object p1
.end method

.method static synthetic c(Lcom/tappx/a/z5;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/tappx/a/i0;->d(Lcom/tappx/a/z5;)Z

    move-result p0

    return p0
.end method

.method private static d(Lcom/tappx/a/z5;)Z
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/tappx/a/z5;->a:Lcom/tappx/a/q5;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 3
    :cond_6
    iget p0, p0, Lcom/tappx/a/q5;->a:I

    const/16 v1, 0x1f4

    if-lt p0, v1, :cond_11

    const/16 v1, 0x257

    if-gt p0, v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method


# virtual methods
.method protected a(Lcom/tappx/a/q5;)Lcom/tappx/a/u5;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/q5;",
            ")",
            "Lcom/tappx/a/u5<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/tappx/a/i0;->q:Lcom/tappx/a/d0;

    new-instance v7, Lcom/tappx/a/c0;

    iget v2, p1, Lcom/tappx/a/q5;->a:I

    iget-object v3, p1, Lcom/tappx/a/q5;->c:Ljava/util/Map;

    iget-object v4, p1, Lcom/tappx/a/q5;->b:[B

    iget-wide v5, p1, Lcom/tappx/a/q5;->f:J

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/tappx/a/c0;-><init>(ILjava/util/Map;[BJ)V

    invoke-virtual {v0, v7}, Lcom/tappx/a/d0;->a(Lcom/tappx/a/c0;)Lcom/tappx/a/f0;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/tappx/a/f0;->a()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 5
    iget-object v0, v0, Lcom/tappx/a/f0;->a:Ljava/lang/Object;

    invoke-static {p1}, Lcom/tappx/a/f6;->a(Lcom/tappx/a/q5;)Lcom/tappx/a/h5$a;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tappx/a/u5;->a(Ljava/lang/Object;Lcom/tappx/a/h5$a;)Lcom/tappx/a/u5;

    move-result-object p1

    goto :goto_30

    .line 7
    :cond_25
    new-instance p1, Lcom/tappx/a/z;

    iget-object v0, v0, Lcom/tappx/a/f0;->b:Lcom/tappx/a/a0;

    invoke-direct {p1, v0}, Lcom/tappx/a/z;-><init>(Lcom/tappx/a/a0;)V

    invoke-static {p1}, Lcom/tappx/a/u5;->a(Lcom/tappx/a/z5;)Lcom/tappx/a/u5;

    move-result-object p1

    :goto_30
    return-object p1
.end method

.method a(Lcom/tappx/a/d0;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/d0<",
            "TT;>;)V"
        }
    .end annotation

    .line 9
    invoke-virtual {p1}, Lcom/tappx/a/d0;->f()Lcom/tappx/a/g0;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 11
    invoke-virtual {p1}, Lcom/tappx/a/g0;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tappx/a/s5;->b(Z)Lcom/tappx/a/s5;

    .line 12
    new-instance v0, Lcom/tappx/a/k5;

    .line 13
    invoke-virtual {p1}, Lcom/tappx/a/g0;->b()I

    move-result v1

    .line 14
    invoke-virtual {p1}, Lcom/tappx/a/g0;->c()I

    move-result v2

    .line 15
    invoke-virtual {p1}, Lcom/tappx/a/g0;->a()F

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/tappx/a/k5;-><init>(IIF)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/tappx/a/s5;->a(Lcom/tappx/a/w5;)Lcom/tappx/a/s5;

    :cond_21
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/tappx/a/i0;->q:Lcom/tappx/a/d0;

    invoke-virtual {v0, p1}, Lcom/tappx/a/d0;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/i0;->q:Lcom/tappx/a/d0;

    invoke-virtual {v0}, Lcom/tappx/a/d0;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Map;
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

    .line 1
    iget-object v0, p0, Lcom/tappx/a/i0;->q:Lcom/tappx/a/d0;

    invoke-virtual {v0}, Lcom/tappx/a/d0;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public j()[B
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/tappx/a/i0;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/tappx/a/s5$c;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/i0;->q:Lcom/tappx/a/d0;

    invoke-virtual {v0}, Lcom/tappx/a/d0;->e()Lcom/tappx/a/d0$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tappx/a/i0;->a(Lcom/tappx/a/d0$b;)Lcom/tappx/a/s5$c;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/tappx/a/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/q1;


# instance fields
.field private final a:Lcom/tappx/a/v;

.field private final b:Lcom/tappx/a/k0;

.field private final c:Lcom/tappx/a/d2;

.field private d:Lcom/tappx/a/q1$a;

.field private e:Lcom/tappx/a/v$b;


# direct methods
.method public constructor <init>(Lcom/tappx/a/v;Lcom/tappx/a/k0;Lcom/tappx/a/d2;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/r1;->a:Lcom/tappx/a/v;

    .line 3
    iput-object p2, p0, Lcom/tappx/a/r1;->b:Lcom/tappx/a/k0;

    .line 4
    iput-object p3, p0, Lcom/tappx/a/r1;->c:Lcom/tappx/a/d2;

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/r1;Lcom/tappx/a/v$a;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lcom/tappx/a/r1;->b(Lcom/tappx/a/v$a;)V

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/r1;Lcom/tappx/a/w1;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/a/r1;->b(Lcom/tappx/a/w1;)V

    return-void
.end method

.method private a(Lcom/tappx/a/v$a;)V
    .registers 3

    .line 21
    sget-object v0, Lcom/tappx/a/r1$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_26

    const/4 v0, 0x3

    if-eq p1, v0, :cond_20

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1a

    .line 35
    sget-object p1, Lcom/tappx/a/a2;->g:Lcom/tappx/a/a2;

    invoke-virtual {p0, p1}, Lcom/tappx/a/r1;->a(Lcom/tappx/a/a2;)V

    goto :goto_31

    .line 36
    :cond_1a
    sget-object p1, Lcom/tappx/a/a2;->f:Lcom/tappx/a/a2;

    invoke-virtual {p0, p1}, Lcom/tappx/a/r1;->a(Lcom/tappx/a/a2;)V

    goto :goto_31

    .line 37
    :cond_20
    sget-object p1, Lcom/tappx/a/a2;->a:Lcom/tappx/a/a2;

    invoke-virtual {p0, p1}, Lcom/tappx/a/r1;->a(Lcom/tappx/a/a2;)V

    goto :goto_31

    .line 38
    :cond_26
    sget-object p1, Lcom/tappx/a/a2;->b:Lcom/tappx/a/a2;

    invoke-virtual {p0, p1}, Lcom/tappx/a/r1;->a(Lcom/tappx/a/a2;)V

    goto :goto_31

    .line 39
    :cond_2c
    sget-object p1, Lcom/tappx/a/a2;->c:Lcom/tappx/a/a2;

    invoke-virtual {p0, p1}, Lcom/tappx/a/r1;->a(Lcom/tappx/a/a2;)V

    :goto_31
    return-void
.end method

.method private b(Lcom/tappx/a/v$a;)V
    .registers 2

    .line 5
    invoke-direct {p0, p1}, Lcom/tappx/a/r1;->a(Lcom/tappx/a/v$a;)V

    return-void
.end method

.method private b(Lcom/tappx/a/w1;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/tappx/a/w1;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2
    sget-object p1, Lcom/tappx/a/a2;->a:Lcom/tappx/a/a2;

    invoke-virtual {p0, p1}, Lcom/tappx/a/r1;->a(Lcom/tappx/a/a2;)V

    goto :goto_f

    .line 4
    :cond_c
    invoke-virtual {p0, p1}, Lcom/tappx/a/r1;->a(Lcom/tappx/a/w1;)V

    :goto_f
    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .line 18
    iget-object v0, p0, Lcom/tappx/a/r1;->e:Lcom/tappx/a/v$b;

    if-eqz v0, :cond_c

    .line 19
    iget-object v1, p0, Lcom/tappx/a/r1;->a:Lcom/tappx/a/v;

    invoke-interface {v1, v0}, Lcom/tappx/a/v;->a(Lcom/tappx/a/v$b;)V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/tappx/a/r1;->e:Lcom/tappx/a/v$b;

    :cond_c
    return-void
.end method

.method protected a(Lcom/tappx/a/a2;)V
    .registers 3

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/tappx/a/r1;->e:Lcom/tappx/a/v$b;

    .line 41
    iget-object v0, p0, Lcom/tappx/a/r1;->d:Lcom/tappx/a/q1$a;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Lcom/tappx/a/q1$a;->a(Lcom/tappx/a/a2;)V

    :cond_a
    return-void
.end method

.method public a(Lcom/tappx/a/q1$a;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/tappx/a/r1;->d:Lcom/tappx/a/q1$a;

    return-void
.end method

.method protected a(Lcom/tappx/a/w1;)V
    .registers 3

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/tappx/a/r1;->e:Lcom/tappx/a/v$b;

    .line 43
    iget-object v0, p0, Lcom/tappx/a/r1;->d:Lcom/tappx/a/q1$a;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Lcom/tappx/a/q1$a;->a(Lcom/tappx/a/w1;)V

    :cond_a
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/tappx/a/v1;Lcom/tappx/sdk/android/AdRequest;)V
    .registers 6

    .line 4
    invoke-virtual {p0}, Lcom/tappx/a/r1;->a()V

    .line 5
    iget-object v0, p0, Lcom/tappx/a/r1;->b:Lcom/tappx/a/k0;

    invoke-virtual {v0, p1, p3, p2, p4}, Lcom/tappx/a/k0;->a(Ljava/lang/String;Lcom/tappx/a/v1;Ljava/lang/String;Lcom/tappx/sdk/android/AdRequest;)Lcom/tappx/a/b2;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/tappx/a/r1;->a:Lcom/tappx/a/v;

    new-instance p3, Lcom/tappx/a/r1$a;

    invoke-direct {p3, p0}, Lcom/tappx/a/r1$a;-><init>(Lcom/tappx/a/r1;)V

    new-instance p4, Lcom/tappx/a/r1$b;

    invoke-direct {p4, p0}, Lcom/tappx/a/r1$b;-><init>(Lcom/tappx/a/r1;)V

    invoke-interface {p2, p1, p3, p4}, Lcom/tappx/a/v;->a(Lcom/tappx/a/b2;Lcom/tappx/a/m;Lcom/tappx/a/h;)Lcom/tappx/a/v$b;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/a/r1;->e:Lcom/tappx/a/v$b;

    .line 17
    iget-object p1, p0, Lcom/tappx/a/r1;->c:Lcom/tappx/a/d2;

    invoke-virtual {p1}, Lcom/tappx/a/d2;->a()V

    return-void
.end method

.method public destroy()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/tappx/a/r1;->a()V

    return-void
.end method

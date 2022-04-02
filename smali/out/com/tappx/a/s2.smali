.class public Lcom/tappx/a/s2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Boolean;

.field private final b:Lcom/tappx/a/p2;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:J


# direct methods
.method constructor <init>(Ljava/lang/Boolean;Lcom/tappx/a/p2;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/s2;->a:Ljava/lang/Boolean;

    .line 3
    iput-object p2, p0, Lcom/tappx/a/s2;->b:Lcom/tappx/a/p2;

    .line 4
    iput-object p3, p0, Lcom/tappx/a/s2;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/tappx/a/s2;->d:Ljava/lang/String;

    .line 6
    iput-wide p5, p0, Lcom/tappx/a/s2;->e:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/s2;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public b()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/tappx/a/s2;->e:J

    return-wide v0
.end method

.method public c()Lcom/tappx/a/p2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/s2;->b:Lcom/tappx/a/p2;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/s2;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/s2;->d:Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/startapp/a/a/b/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# static fields
.field private static final a:Lcom/startapp/a/a/a/c;


# instance fields
.field private final b:Lcom/startapp/a/a/f/a;

.field private final c:Lcom/startapp/a/a/f/b;

.field private final d:Lcom/startapp/a/a/g/c;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 26
    new-instance v0, Lcom/startapp/a/a/e/a;

    sget-object v1, Lcom/startapp/a/a/g/a;->c:Lcom/startapp/a/a/g/a;

    invoke-virtual {v1}, Lcom/startapp/a/a/g/a;->b()I

    move-result v1

    sget-object v2, Lcom/startapp/a/a/g/a;->c:Lcom/startapp/a/a/g/a;

    .line 27
    invoke-virtual {v2}, Lcom/startapp/a/a/g/a;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/startapp/a/a/e/a;-><init>(II)V

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"

    .line 28
    invoke-virtual {v0, v1}, Lcom/startapp/a/a/e/d;->a(Ljava/lang/String;)Lcom/startapp/a/a/a/c;

    move-result-object v0

    sput-object v0, Lcom/startapp/a/a/b/a;->a:Lcom/startapp/a/a/a/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/startapp/a/a/e/b;

    invoke-direct {v0}, Lcom/startapp/a/a/e/b;-><init>()V

    .line 37
    new-instance v1, Lcom/startapp/a/a/g/c;

    invoke-direct {v1}, Lcom/startapp/a/a/g/c;-><init>()V

    iput-object v1, p0, Lcom/startapp/a/a/b/a;->d:Lcom/startapp/a/a/g/c;

    .line 38
    new-instance v2, Lcom/startapp/a/a/f/a;

    invoke-direct {v2, v0, v1}, Lcom/startapp/a/a/f/a;-><init>(Lcom/startapp/a/a/e/b;Lcom/startapp/a/a/g/c;)V

    iput-object v2, p0, Lcom/startapp/a/a/b/a;->b:Lcom/startapp/a/a/f/a;

    .line 39
    new-instance v0, Lcom/startapp/a/a/f/b;

    invoke-direct {v0}, Lcom/startapp/a/a/f/b;-><init>()V

    iput-object v0, p0, Lcom/startapp/a/a/b/a;->c:Lcom/startapp/a/a/f/b;

    return-void
.end method


# virtual methods
.method a(Lcom/startapp/a/a/g/a;Ljava/util/List;J)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/a/a/g/a;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/startapp/a/a/b/a;->d:Lcom/startapp/a/a/g/c;

    invoke-virtual {v0, p1}, Lcom/startapp/a/a/g/c;->a(Lcom/startapp/a/a/g/a;)Lcom/startapp/a/a/a/a;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p2}, Lcom/startapp/a/a/a/a;->a(Ljava/util/List;)Lcom/startapp/a/a/a/c;

    move-result-object p2

    .line 97
    iget-object v0, p0, Lcom/startapp/a/a/b/a;->b:Lcom/startapp/a/a/f/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/startapp/a/a/f/a;->a(Lcom/startapp/a/a/g/a;Lcom/startapp/a/a/a/c;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 91
    sget-object v2, Lcom/startapp/a/a/g/a;->c:Lcom/startapp/a/a/g/a;

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/startapp/a/a/b/a;->a(Lcom/startapp/a/a/g/a;Ljava/util/List;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

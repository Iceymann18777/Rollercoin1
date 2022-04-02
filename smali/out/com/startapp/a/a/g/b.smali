.class abstract Lcom/startapp/a/a/g/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private final a:Lcom/startapp/a/a/g/a;

.field private final b:Lcom/startapp/a/a/d/e;

.field private final c:Lcom/startapp/a/a/e/d;

.field private final d:Lcom/startapp/a/a/a/a;


# direct methods
.method protected constructor <init>(Lcom/startapp/a/a/g/a;Lcom/startapp/a/a/d/e;Lcom/startapp/a/a/e/d;Lcom/startapp/a/a/a/a;)V
    .registers 5

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/startapp/a/a/g/b;->a:Lcom/startapp/a/a/g/a;

    .line 18
    iput-object p2, p0, Lcom/startapp/a/a/g/b;->b:Lcom/startapp/a/a/d/e;

    .line 19
    iput-object p3, p0, Lcom/startapp/a/a/g/b;->c:Lcom/startapp/a/a/e/d;

    .line 20
    iput-object p4, p0, Lcom/startapp/a/a/g/b;->d:Lcom/startapp/a/a/a/a;

    return-void
.end method


# virtual methods
.method final a()Lcom/startapp/a/a/d/e;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/startapp/a/a/g/b;->b:Lcom/startapp/a/a/d/e;

    return-object v0
.end method

.method final b()Lcom/startapp/a/a/a/a;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/startapp/a/a/g/b;->d:Lcom/startapp/a/a/a/a;

    return-object v0
.end method

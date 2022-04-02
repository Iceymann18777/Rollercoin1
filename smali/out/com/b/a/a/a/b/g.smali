.class public Lcom/b/a/a/a/b/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/a/b/g;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/b/a/a/a/b/g;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/a/a/b/g;
    .registers 3

    const-string v0, "Name is null or empty"

    invoke-static {p0, v0}, Lcom/b/a/a/a/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Version is null or empty"

    invoke-static {p1, v0}, Lcom/b/a/a/a/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/b/a/a/a/b/g;

    invoke-direct {v0, p0, p1}, Lcom/b/a/a/a/b/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/a/b/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/a/b/g;->b:Ljava/lang/String;

    return-object v0
.end method

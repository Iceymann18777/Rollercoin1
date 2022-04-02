.class public Lcom/b/a/a/a/b/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/b/a/a/a/b/f;

.field private final b:Lcom/b/a/a/a/b/f;

.field private final c:Z


# direct methods
.method private constructor <init>(Lcom/b/a/a/a/b/f;Lcom/b/a/a/a/b/f;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/a/b/c;->a:Lcom/b/a/a/a/b/f;

    if-nez p2, :cond_c

    sget-object p1, Lcom/b/a/a/a/b/f;->c:Lcom/b/a/a/a/b/f;

    iput-object p1, p0, Lcom/b/a/a/a/b/c;->b:Lcom/b/a/a/a/b/f;

    goto :goto_e

    :cond_c
    iput-object p2, p0, Lcom/b/a/a/a/b/c;->b:Lcom/b/a/a/a/b/f;

    :goto_e
    iput-boolean p3, p0, Lcom/b/a/a/a/b/c;->c:Z

    return-void
.end method

.method public static a(Lcom/b/a/a/a/b/f;Lcom/b/a/a/a/b/f;Z)Lcom/b/a/a/a/b/c;
    .registers 4

    const-string v0, "Impression owner is null"

    invoke-static {p0, v0}, Lcom/b/a/a/a/e/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/b/a/a/a/e/e;->a(Lcom/b/a/a/a/b/f;)V

    new-instance v0, Lcom/b/a/a/a/b/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/b/a/a/a/b/c;-><init>(Lcom/b/a/a/a/b/f;Lcom/b/a/a/a/b/f;Z)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 3

    sget-object v0, Lcom/b/a/a/a/b/f;->a:Lcom/b/a/a/a/b/f;

    iget-object v1, p0, Lcom/b/a/a/a/b/c;->a:Lcom/b/a/a/a/b/f;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public b()Z
    .registers 3

    sget-object v0, Lcom/b/a/a/a/b/f;->a:Lcom/b/a/a/a/b/f;

    iget-object v1, p0, Lcom/b/a/a/a/b/c;->b:Lcom/b/a/a/a/b/f;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public c()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/b/a/a/a/b/c;->a:Lcom/b/a/a/a/b/f;

    const-string v2, "impressionOwner"

    invoke-static {v0, v2, v1}, Lcom/b/a/a/a/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/b/a/a/a/b/c;->b:Lcom/b/a/a/a/b/f;

    const-string v2, "videoEventsOwner"

    invoke-static {v0, v2, v1}, Lcom/b/a/a/a/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/b/a/a/a/b/c;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isolateVerificationScripts"

    invoke-static {v0, v2, v1}, Lcom/b/a/a/a/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

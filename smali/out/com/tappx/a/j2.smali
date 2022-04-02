.class public Lcom/tappx/a/j2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/tappx/a/j2;->a:Z

    .line 3
    iput-object p2, p0, Lcom/tappx/a/j2;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/tappx/a/j2;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/tappx/a/j2;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/j2;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/j2;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/j2;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/j2;->a:Z

    return v0
.end method

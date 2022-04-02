.class public Lcom/startapp/common/a/h$b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/common/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/startapp/common/a/h$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/startapp/common/a/h$b;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/startapp/common/a/h$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/startapp/common/a/h$b;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/startapp/common/a/h$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/startapp/common/a/h$b;->c:Ljava/lang/String;

    return-void
.end method

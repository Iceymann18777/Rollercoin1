.class public Lcom/startapp/common/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/common/a$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/startapp/common/a$a;

.field c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/startapp/common/a$a;I)V
    .registers 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/startapp/common/a;->a:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/startapp/common/a;->b:Lcom/startapp/common/a$a;

    .line 25
    iput p3, p0, Lcom/startapp/common/a;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 29
    sget-object v0, Lcom/startapp/common/g$a;->b:Lcom/startapp/common/g$a;

    new-instance v1, Lcom/startapp/common/a$1;

    invoke-direct {v1, p0}, Lcom/startapp/common/a$1;-><init>(Lcom/startapp/common/a;)V

    invoke-static {v0, v1}, Lcom/startapp/common/g;->a(Lcom/startapp/common/g$a;Ljava/lang/Runnable;)V

    return-void
.end method

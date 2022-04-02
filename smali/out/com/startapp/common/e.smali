.class public Lcom/startapp/common/e;
.super Ljava/lang/Exception;
.source "StartAppSDK"


# instance fields
.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/startapp/common/e;->b:Z

    .line 27
    iput v0, p0, Lcom/startapp/common/e;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/startapp/common/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 5

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/startapp/common/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/startapp/common/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V
    .registers 5

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/startapp/common/e;->b:Z

    .line 27
    iput p1, p0, Lcom/startapp/common/e;->c:I

    .line 11
    iput-boolean p3, p0, Lcom/startapp/common/e;->b:Z

    .line 12
    iput p4, p0, Lcom/startapp/common/e;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/startapp/common/e;->c:I

    return v0
.end method

.method public b()Z
    .registers 2

    .line 42
    iget-boolean v0, p0, Lcom/startapp/common/e;->b:Z

    return v0
.end method

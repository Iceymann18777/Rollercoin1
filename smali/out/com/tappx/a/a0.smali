.class public Lcom/tappx/a/a0;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/a0$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/tappx/a/a0$a;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/tappx/a/a0$a;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 5
    invoke-direct {p0, p1, v0, v1}, Lcom/tappx/a/a0;-><init>(Lcom/tappx/a/a0$a;Ljava/util/Map;I)V

    return-void
.end method

.method public constructor <init>(Lcom/tappx/a/a0$a;Ljava/util/Map;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/a0$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/a0;->a:Lcom/tappx/a/a0$a;

    .line 4
    iput p3, p0, Lcom/tappx/a/a0;->b:I

    return-void
.end method


# virtual methods
.method public a()Lcom/tappx/a/a0$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/a0;->a:Lcom/tappx/a/a0$a;

    return-object v0
.end method

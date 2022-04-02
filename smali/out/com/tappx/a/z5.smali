.class public Lcom/tappx/a/z5;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final a:Lcom/tappx/a/q5;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tappx/a/z5;->a:Lcom/tappx/a/q5;

    return-void
.end method

.method public constructor <init>(Lcom/tappx/a/q5;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/tappx/a/z5;->a:Lcom/tappx/a/q5;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/tappx/a/z5;->a:Lcom/tappx/a/q5;

    return-void
.end method


# virtual methods
.method a(J)V
    .registers 3

    return-void
.end method

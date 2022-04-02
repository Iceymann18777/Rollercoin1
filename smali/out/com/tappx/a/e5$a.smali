.class public Lcom/tappx/a/e5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/e5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/t3;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tappx/a/c5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tappx/a/t3;Lcom/tappx/a/c5;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/e5$a;->a:Lcom/tappx/a/t3;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tappx/a/e5$a;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()Lcom/tappx/a/t3;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/e5$a;->a:Lcom/tappx/a/t3;

    return-object v0
.end method

.method public b()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tappx/a/c5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tappx/a/e5$a;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

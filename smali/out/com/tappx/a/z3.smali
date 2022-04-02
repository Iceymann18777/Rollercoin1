.class public Lcom/tappx/a/z3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/z3$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/tappx/a/z3$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tappx/a/z3$b;-><init>(Landroid/content/Context;Lcom/tappx/a/z3$a;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    invoke-static {v0, p1}, Lcom/tappx/a/u4;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.class public abstract Lcom/b/a/a/a/h/a/b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/a/h/a/b$b;,
        Lcom/b/a/a/a/h/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/b/a/a/a/h/a/b$a;

.field protected final d:Lcom/b/a/a/a/h/a/b$b;


# direct methods
.method public constructor <init>(Lcom/b/a/a/a/h/a/b$b;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/a/h/a/b;->d:Lcom/b/a/a/a/h/a/b$b;

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/a/a/h/a/b$a;)V
    .registers 2

    iput-object p1, p0, Lcom/b/a/a/a/h/a/b;->a:Lcom/b/a/a/a/h/a/b$a;

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 2

    iget-object p1, p0, Lcom/b/a/a/a/h/a/b;->a:Lcom/b/a/a/a/h/a/b$a;

    if-eqz p1, :cond_7

    invoke-interface {p1, p0}, Lcom/b/a/a/a/h/a/b$a;->a(Lcom/b/a/a/a/h/a/b;)V

    :cond_7
    return-void
.end method

.method public a(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/b/a/a/a/h/a/b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/b/a/a/a/h/a/b;->a(Ljava/lang/String;)V

    return-void
.end method

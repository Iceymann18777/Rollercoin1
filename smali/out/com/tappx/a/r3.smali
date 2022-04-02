.class public Lcom/tappx/a/r3;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/r3$c;,
        Lcom/tappx/a/r3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/tappx/a/r3$b;

.field private final c:Lcom/tappx/a/r3$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tappx/a/r3$b;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/tappx/a/r3$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tappx/a/r3$c;-><init>(Lcom/tappx/a/r3$a;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/tappx/a/r3;-><init>(Landroid/content/Context;Lcom/tappx/a/r3$b;Lcom/tappx/a/r3$c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tappx/a/r3$b;Lcom/tappx/a/r3$c;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/tappx/a/r3;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/tappx/a/r3;->b:Lcom/tappx/a/r3$b;

    .line 5
    iput-object p3, p0, Lcom/tappx/a/r3;->c:Lcom/tappx/a/r3$c;

    return-void
.end method

.method private a()Ljava/io/File;
    .registers 4

    .line 10
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Pictures"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    .line 1
    array-length v1, p1

    if-eqz v1, :cond_21

    aget-object v1, p1, v0

    if-nez v1, :cond_b

    goto :goto_21

    .line 4
    :cond_b
    invoke-direct {p0}, Lcom/tappx/a/r3;->a()Ljava/io/File;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/tappx/a/r3;->c:Lcom/tappx/a/r3$c;

    iget-object v3, p0, Lcom/tappx/a/r3;->a:Landroid/content/Context;

    aget-object p1, p1, v0

    invoke-static {v2, v3, p1, v1}, Lcom/tappx/a/r3$c;->a(Lcom/tappx/a/r3$c;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    .line 8
    :cond_1c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 9
    :cond_21
    :goto_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/Boolean;)V
    .registers 2

    .line 12
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 14
    iget-object p1, p0, Lcom/tappx/a/r3;->b:Lcom/tappx/a/r3$b;

    invoke-interface {p1}, Lcom/tappx/a/r3$b;->a()V

    goto :goto_14

    .line 16
    :cond_f
    iget-object p1, p0, Lcom/tappx/a/r3;->b:Lcom/tappx/a/r3$b;

    invoke-interface {p1}, Lcom/tappx/a/r3$b;->b()V

    :goto_14
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tappx/a/r3;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/tappx/a/r3;->a(Ljava/lang/Boolean;)V

    return-void
.end method

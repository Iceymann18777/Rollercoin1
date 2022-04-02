.class final Lcom/truenet/android/TrueNetSDK$b$1;
.super La/a/b/b/g;
.source "StartAppSDK"

# interfaces
.implements La/a/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truenet/android/TrueNetSDK$b;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/b/b/g;",
        "La/a/b/a/b<",
        "Ljava/lang/Thread;",
        "Ljava/lang/Throwable;",
        "La/a/j;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/truenet/android/TrueNetSDK$a;)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, La/a/b/b/g;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()La/a/d/c;
    .registers 2

    const-class v0, Lcom/truenet/android/TrueNetSDK$a;

    invoke-static {v0}, La/a/b/b/n;->a(Ljava/lang/Class;)La/a/d/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 23
    check-cast p1, Ljava/lang/Thread;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lcom/truenet/android/TrueNetSDK$b$1;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    sget-object p1, La/a/j;->a:La/a/j;

    return-object p1
.end method

.method public final a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "p1"

    invoke-static {p1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p2"

    invoke-static {p2, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truenet/android/TrueNetSDK$b$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/truenet/android/TrueNetSDK$a;

    .line 45
    invoke-static {v0, p1, p2}, Lcom/truenet/android/TrueNetSDK$a;->a(Lcom/truenet/android/TrueNetSDK$a;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    const-string v0, "uncaughtExceptionHandler"

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    const-string v0, "uncaughtExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V"

    return-object v0
.end method

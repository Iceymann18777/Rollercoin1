.class final Lcom/truenet/android/d;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final synthetic a:La/a/b/a/b;


# direct methods
.method constructor <init>(La/a/b/a/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truenet/android/d;->a:La/a/b/a/b;

    return-void
.end method


# virtual methods
.method public final synthetic uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/truenet/android/d;->a:La/a/b/a/b;

    invoke-interface {v0, p1, p2}, La/a/b/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "invoke(...)"

    invoke-static {p1, p2}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

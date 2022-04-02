.class final Lcom/truenet/android/b$f;
.super La/a/b/b/i;
.source "StartAppSDK"

# interfaces
.implements La/a/b/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truenet/android/b;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/b/b/i;",
        "La/a/b/a/a<",
        "Ljava/util/concurrent/SynchronousQueue<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/truenet/android/b$f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/truenet/android/b$f;

    invoke-direct {v0}, Lcom/truenet/android/b$f;-><init>()V

    sput-object v0, Lcom/truenet/android/b$f;->a:Lcom/truenet/android/b$f;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/a/b/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/truenet/android/b$f;->b()Ljava/util/concurrent/SynchronousQueue;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/concurrent/SynchronousQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/SynchronousQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    return-object v0
.end method

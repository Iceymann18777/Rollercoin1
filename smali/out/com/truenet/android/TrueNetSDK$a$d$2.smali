.class final Lcom/truenet/android/TrueNetSDK$a$d$2;
.super La/a/b/b/i;
.source "StartAppSDK"

# interfaces
.implements La/a/b/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truenet/android/TrueNetSDK$a$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/b/b/i;",
        "La/a/b/a/a<",
        "La/a/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/truenet/android/TrueNetSDK$a$d$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/truenet/android/TrueNetSDK$a$d$2;

    invoke-direct {v0}, Lcom/truenet/android/TrueNetSDK$a$d$2;-><init>()V

    sput-object v0, Lcom/truenet/android/TrueNetSDK$a$d$2;->a:Lcom/truenet/android/TrueNetSDK$a$d$2;

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

    .line 23
    invoke-virtual {p0}, Lcom/truenet/android/TrueNetSDK$a$d$2;->b()V

    sget-object v0, La/a/j;->a:La/a/j;

    return-object v0
.end method

.method public final b()V
    .registers 1

    return-void
.end method

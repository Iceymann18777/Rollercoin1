.class final Lcom/truenet/android/TrueNetSDK$a$a;
.super La/a/b/b/i;
.source "StartAppSDK"

# interfaces
.implements La/a/b/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truenet/android/TrueNetSDK$a;->a(Landroid/content/Context;Lcom/truenet/android/LinksData;La/a/b/a/a;)V
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


# instance fields
.field final synthetic $bulkQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $finish:La/a/b/a/a;

.field final synthetic $links:Lcom/truenet/android/LinksData;


# direct methods
.method constructor <init>(Lcom/truenet/android/LinksData;Ljava/util/concurrent/ConcurrentLinkedQueue;Landroid/content/Context;La/a/b/a/a;)V
    .registers 5

    iput-object p1, p0, Lcom/truenet/android/TrueNetSDK$a$a;->$links:Lcom/truenet/android/LinksData;

    iput-object p2, p0, Lcom/truenet/android/TrueNetSDK$a$a;->$bulkQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p3, p0, Lcom/truenet/android/TrueNetSDK$a$a;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/truenet/android/TrueNetSDK$a$a;->$finish:La/a/b/a/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, La/a/b/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .registers 2

    .line 23
    invoke-virtual {p0}, Lcom/truenet/android/TrueNetSDK$a$a;->b()V

    sget-object v0, La/a/j;->a:La/a/j;

    return-object v0
.end method

.method public final b()V
    .registers 6

    .line 179
    iget-object v0, p0, Lcom/truenet/android/TrueNetSDK$a$a;->$links:Lcom/truenet/android/LinksData;

    invoke-virtual {v0}, Lcom/truenet/android/LinksData;->getBulkResponse()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 180
    new-instance v0, Lcom/truenet/android/ValidationResults;

    iget-object v1, p0, Lcom/truenet/android/TrueNetSDK$a$a;->$bulkQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, La/a/a/g;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/truenet/android/ValidationResults;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/startapp/common/c/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {}, Lcom/truenet/android/TrueNetSDK;->access$getResultUrl$cp()Ljava/net/URL;

    move-result-object v1

    const-string v2, "json"

    invoke-static {v0, v2}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/truenet/android/TrueNetSDK$a$a;->$context:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/truenet/android/a/g;->b(Ljava/net/URL;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 184
    :cond_27
    sget-object v0, Lcom/truenet/android/TrueNetSDK;->Companion:Lcom/truenet/android/TrueNetSDK$a;

    iget-object v1, p0, Lcom/truenet/android/TrueNetSDK$a$a;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/truenet/android/TrueNetSDK$a$a;->$links:Lcom/truenet/android/LinksData;

    invoke-virtual {v2}, Lcom/truenet/android/LinksData;->getSleep()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/truenet/android/TrueNetSDK$a;->a(Lcom/truenet/android/TrueNetSDK$a;Landroid/content/Context;J)V

    .line 185
    iget-object v0, p0, Lcom/truenet/android/TrueNetSDK$a$a;->$links:Lcom/truenet/android/LinksData;

    invoke-virtual {v0}, Lcom/truenet/android/LinksData;->getSleep()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_45

    .line 186
    iget-object v0, p0, Lcom/truenet/android/TrueNetSDK$a$a;->$finish:La/a/b/a/a;

    invoke-interface {v0}, La/a/b/a/a;->a()Ljava/lang/Object;

    :cond_45
    return-void
.end method

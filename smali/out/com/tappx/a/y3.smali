.class public Lcom/tappx/a/y3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/tappx/a/y3;->a:Landroid/util/SparseArray;

    const/high16 v0, -0x80000000

    .line 2
    sput v0, Lcom/tappx/a/y3;->b:I

    return-void
.end method

.method public static declared-synchronized a()I
    .registers 2

    const-class v0, Lcom/tappx/a/y3;

    monitor-enter v0

    .line 16
    :cond_3
    :try_start_3
    sget v1, Lcom/tappx/a/y3;->b:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/tappx/a/y3;->b:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    if-eqz v1, :cond_3

    monitor-exit v0

    return v1

    :catchall_d
    move-exception v1

    monitor-exit v0

    goto :goto_11

    :goto_10
    throw v1

    :goto_11
    goto :goto_10
.end method

.method private static a(Ljava/lang/String;)I
    .registers 3

    .line 14
    invoke-static {}, Lcom/tappx/a/y3;->a()I

    move-result v0

    .line 15
    sget-object v1, Lcom/tappx/a/y3;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v0
.end method

.method public static a(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3

    .line 8
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "ipc_aavc_bkN4RpcYmIsYuf4eZQOt"

    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const-string v0, "aavc_5orHkZouKDEIkayJNWLC"

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 13
    sget-object v0, Lcom/tappx/a/y3;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x40000

    if-le v0, v1, :cond_12

    .line 4
    invoke-static {p1}, Lcom/tappx/a/y3;->a(Ljava/lang/String;)I

    move-result p1

    const-string v0, "aavc_5orHkZouKDEIkayJNWLC"

    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_17

    :cond_12
    const-string v0, "ipc_aavc_bkN4RpcYmIsYuf4eZQOt"

    .line 7
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_17
    return-void
.end method

.class public Lcom/tappx/a/a5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tappx/a/c5$a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/tappx/a/a5;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/tappx/a/a5;->b:I

    return-void
.end method

.method private static declared-synchronized a()I
    .registers 3

    const-class v0, Lcom/tappx/a/a5;

    monitor-enter v0

    .line 4
    :try_start_3
    sget v1, Lcom/tappx/a/a5;->b:I

    .line 5
    sget v2, Lcom/tappx/a/a5;->b:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/tappx/a/a5;->b:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return v1

    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Lcom/tappx/a/c5$a;)I
    .registers 3

    .line 1
    invoke-static {}, Lcom/tappx/a/a5;->a()I

    move-result v0

    .line 2
    sget-object v1, Lcom/tappx/a/a5;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return v0
.end method

.method public static a(I)Lcom/tappx/a/c5$a;
    .registers 2

    .line 3
    sget-object v0, Lcom/tappx/a/a5;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tappx/a/c5$a;

    return-object p0
.end method

.method public static b(I)V
    .registers 2

    .line 1
    sget-object v0, Lcom/tappx/a/a5;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

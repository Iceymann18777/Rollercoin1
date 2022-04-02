.class final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$2;
.super Ljava/lang/Object;
.source "com.google.android.datatransport:transport-runtime@@2.2.0"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;


# static fields
.field private static final instance:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$2;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$2;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$2;->instance:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$2;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;
    .registers 1

    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$2;->instance:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$2;

    return-object v0
.end method


# virtual methods
.method public upgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->lambda$static$1(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

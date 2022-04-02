.class final synthetic Lcom/google/android/gms/common/zaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.3.0"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# static fields
.field static final zaa:Lcom/google/android/gms/tasks/SuccessContinuation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/zaa;

    invoke-direct {v0}, Lcom/google/android/gms/common/zaa;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/zaa;->zaa:Lcom/google/android/gms/tasks/SuccessContinuation;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 2

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

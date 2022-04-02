.class final Lcom/tappx/a/j4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/logging/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/j4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

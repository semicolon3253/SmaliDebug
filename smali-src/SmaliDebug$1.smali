.class Lkr/semicolon1/smalidebug/SmaliDebug$1;
.super Ljava/lang/Object;
.source "SmaliDebug.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/semicolon1/smalidebug/SmaliDebug;->setUncaughtException()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 52
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    return-void
.end method

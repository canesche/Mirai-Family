#set -e

LLVM_INSTALL_DIR="/bin" # directory install LLVM: Ex.: /llvm-project/build

BENCH=(
    Apex_Predator
    Arcane
    B1nary
    BallPit
    Beastmode
    Cbot
    CyberWar
    Demeter
    Demon.a
    Demon.e
    eragon
    eragon2.0
    Execution.i
    Extendo
    FBot.a
    Galaxy.d
    Galaxy.g
    Hades
    Hakai.a
    Joker  
    Josho.b
    Josho.c
    Katrina.a
    Kira
    Kowai
    L33t.d
    L7
    Lulz
    Oblivion
    Okami
    Onryo
    Oreo
    OwariReborn
    Razor
    Reaper.a
    Reaper.b
    Rektbot
    Renegade
    Selfrep
    Shinto.d
    Sora
    Sythe
    Ultron.a
    Void
    Yagi
    Yakuza
    Yummy
    Zekrom
)

mkdir -p results
mkdir -p results/obj
mkdir -p results/bytecode
mkdir -p results/bin

rm -rf *.ll

for ((i=0; i < ${#BENCH[@]}; i++)) do
    echo ${BENCH[i]}
    FILE=src/${BENCH[i]}/*.c

    $LLVM_INSTALL_DIR/clang -Xclang -disable-O0-optnone -c -S -emit-llvm $FILE &> /tmp/trash.txt
    $LLVM_INSTALL_DIR/llvm-link -S *.ll -o results/bytecode/${BENCH[i]}.ll --only-needed
    $LLVM_INSTALL_DIR/clang -c results/bytecode/${BENCH[i]}.ll -o results/obj/${BENCH[i]}.o
    $LLVM_INSTALL_DIR/clang results/bytecode/${BENCH[i]}.ll -o results/bin/${BENCH[i]}.exe

    rm -rf *.ll
done
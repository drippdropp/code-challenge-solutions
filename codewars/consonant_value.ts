export function solve(s: string): number {
    return Math.max(...s.split(/[aeiou]/i).map((grp) => {
        return grp
            .split('')
            .reduce((acc: number, chr: string) => acc + (chr.charCodeAt(0) - 96), 0);
    })) as number;
}
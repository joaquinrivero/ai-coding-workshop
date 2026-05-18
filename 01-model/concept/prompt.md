List every bug. One short bullet each, no fixes.

function median(nums) {
  const sorted = nums.sort();
  return sorted[Math.floor(sorted.length / 2)];
}
